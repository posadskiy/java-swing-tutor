#!/bin/bash
set -e

# deploy-to-k3s.sh - Prepare k3s cluster for java-swing-tutor (cluster only, no service deployment).
# Creates namespace, Docker Hub secret, ConfigMap, Secrets, Traefik ingress.
# Deploy website: ./website/deployment/scripts/deploy.sh <version>
# Deploy backend:  ./service/deployment/scripts/deploy.sh <version>
#
# Required env: DOCKERHUB_USERNAME, DOCKERHUB_TOKEN; K3S_SERVER_IP, K3S_SSH_USER (see setup-env.sh).
# For backend secrets: JAVA_SWING_TUTOR_DATABASE_PASSWORD etc. (see secrets.yaml).

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEPLOYMENT_DIR="$(dirname "$(dirname "$SCRIPT_DIR")")"
PROJECT_ROOT="$(dirname "$DEPLOYMENT_DIR")"
NAMESPACE="java-swing-tutor"

echo "🚀 Preparing k3s cluster for java-swing-tutor (namespace, config, ingress only)"
echo "📁 Namespace: $NAMESPACE"
echo ""

echo "🔍 Validating environment..."
"$SCRIPT_DIR/setup-env.sh" || { echo "❌ Environment validation failed"; exit 1; }

if ! kubectl cluster-info &>/dev/null; then
  echo "❌ Error: Cannot connect to k3s cluster"
  exit 1
fi
echo "✅ Cluster accessible"
echo ""

echo "📁 Creating namespace..."
kubectl apply -f "$DEPLOYMENT_DIR/namespace.yaml"

echo ""
echo "🔐 Creating Docker Hub registry secret..."
"$DEPLOYMENT_DIR/scripts/dockerhub/create-registry-secret.sh" "$NAMESPACE"

echo ""
echo "⚙️  Deploying ConfigMap..."
kubectl apply -f "$DEPLOYMENT_DIR/configmap.yaml"

echo ""
echo "🔒 Deploying Secrets..."
if command -v envsubst &>/dev/null; then
  envsubst < "$DEPLOYMENT_DIR/secrets.yaml" | kubectl apply -f -
else
  echo "⚠️  envsubst not found. Run: envsubst < $DEPLOYMENT_DIR/secrets.yaml | kubectl apply -f -"
  exit 1
fi

echo ""
echo "🔐 Deploying Traefik Let's Encrypt..."
kubectl apply -f "$DEPLOYMENT_DIR/ingress/traefik-letsencrypt.yaml"
sleep 3

echo ""
echo "🌐 Deploying Traefik IngressRoute and Middleware..."
kubectl apply -f "$DEPLOYMENT_DIR/ingress/traefik-middleware.yaml"
kubectl apply -f "$DEPLOYMENT_DIR/ingress/traefik-ingressroute.yaml"

echo ""
echo "✅ Cluster prepared. Deploy services from each folder:"
echo "   cd $PROJECT_ROOT/website && ./deployment/scripts/deploy.sh <version>"
echo "   cd $PROJECT_ROOT/service && ./deployment/scripts/deploy.sh <version>"
