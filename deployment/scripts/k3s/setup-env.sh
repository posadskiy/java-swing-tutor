#!/bin/bash
set -e

# setup-env.sh - Validate environment and setup for k3s deployment
# Usage: ./setup-env.sh

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
K8S_DIR="$(dirname "$(dirname "$SCRIPT_DIR")")"
PROJECT_ROOT="$(dirname "$K8S_DIR")"
COMMON_SCRIPTS_DIR="$K8S_DIR/scripts/common"

echo "🔍 Validating environment for k3s deployment..."

# Required environment variables
REQUIRED_VARS=(
  "DOCKERHUB_USERNAME"
  "DOCKERHUB_TOKEN"
  "K3S_SERVER_IP"
  "K3S_SSH_USER"
)
# All of the above are required (no defaults)

# Optional for full deployment (backend + DB secrets)
OPTIONAL_VARS=(
  "JAVA_SWING_TUTOR_DATABASE_PASSWORD"
)

MISSING_VARS=()

for var in "${REQUIRED_VARS[@]}"; do
  if [ -z "${!var}" ]; then
    MISSING_VARS+=("$var")
  fi
done

if [ ${#MISSING_VARS[@]} -ne 0 ]; then
  echo "❌ Error: Missing required environment variables:"
  for var in "${MISSING_VARS[@]}"; do
    echo "   - $var"
  done
  echo ""
  echo "Please set these environment variables before running the deployment script."
  exit 1
fi

echo "✅ All required environment variables are set"

# Check SSH access
echo "🔍 Checking SSH access to k3s server..."
if ! ssh -o ConnectTimeout=5 -o StrictHostKeyChecking=no "$K3S_SSH_USER@$K3S_SERVER_IP" "echo 'SSH connection successful'" 2>/dev/null; then
  echo "❌ Error: Cannot connect to k3s server via SSH"
  echo "Please ensure SSH key is set up for passwordless access"
  exit 1
fi

echo "✅ SSH access to k3s server is working"

# Check k3s connectivity
echo "🔍 Checking k3s connectivity..."
if ! kubectl cluster-info &>/dev/null; then
  echo "⚠️  Warning: Cannot connect to k3s cluster"
  echo "Please ensure:"
  echo "  1. k3s is installed on the server"
  echo "  2. KUBECONFIG is set correctly"
  echo "  3. kubeconfig points to $K3S_SERVER_IP"
  echo ""
  echo "You can test with: kubectl get nodes"
else
  echo "✅ k3s cluster connectivity is working"
  kubectl cluster-info
fi

# Check Docker Hub credentials
echo "🔍 Checking Docker Hub credentials..."
if ! docker login -u "$DOCKERHUB_USERNAME" -p "$DOCKERHUB_TOKEN" &>/dev/null; then
  echo "⚠️  Warning: Cannot login to Docker Hub"
  echo "Please verify DOCKERHUB_USERNAME and DOCKERHUB_TOKEN"
else
  echo "✅ Docker Hub credentials are valid"
fi

# Check if Docker images exist
echo "🔍 Checking if Docker images exist..."
if [ -f "$COMMON_SCRIPTS_DIR/get-version.sh" ]; then
  WEBSITE_DIR="$PROJECT_ROOT/website"
  if [ -f "$WEBSITE_DIR/package.json" ]; then
    WEBSITE_VERSION=$("$COMMON_SCRIPTS_DIR/get-version.sh" "$WEBSITE_DIR")
    if ! docker manifest inspect "$DOCKERHUB_USERNAME/java-swing-tutor-website:$WEBSITE_VERSION" &>/dev/null; then
      echo "⚠️  Warning: Website image not found: $DOCKERHUB_USERNAME/java-swing-tutor-website:$WEBSITE_VERSION"
      echo "   Build: $K8S_DIR/scripts/dockerhub/build-and-push-all.sh <version>"
    else
      echo "✅ Website image exists"
    fi
  fi
  if [ -f "$PROJECT_ROOT/pom.xml" ]; then
    SERVICE_VERSION=$("$COMMON_SCRIPTS_DIR/get-version.sh" "$PROJECT_ROOT")
    if ! docker manifest inspect "$DOCKERHUB_USERNAME/java-swing-tutor-service:$SERVICE_VERSION" &>/dev/null; then
      echo "⚠️  Warning: Service image not found: $DOCKERHUB_USERNAME/java-swing-tutor-service:$SERVICE_VERSION"
      echo "   Build: $K8S_DIR/scripts/dockerhub/build-and-push-all.sh <version>"
    else
      echo "✅ Service image exists"
    fi
  fi
else
  echo "⚠️  Warning: Cannot check images - get-version.sh not found"
fi

echo ""
echo "✅ Environment validation completed!"
echo ""
echo "Ready to deploy to k3s cluster at $K3S_SERVER_IP"
