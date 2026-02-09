#!/bin/bash
set -e

# deploy.sh - Deploy java-swing-tutor-service (backend) to k3s.
# Deploy Flyway first from flyway/ (run flyway/deployment/scripts/deploy.sh), then run this.
# Cluster must be prepared via java-swing-tutor/deployment/scripts/k3s/deploy-to-k3s.sh
# Usage: ./deploy.sh <version>

SERVICE_NAME="java-swing-tutor-service"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEPLOYMENT_DIR="$(dirname "$SCRIPT_DIR")"
NAMESPACE="java-swing-tutor"

if [ $# -lt 1 ]; then
  echo "Usage: $0 <version>" >&2
  exit 1
fi
VERSION=$1

echo "🚀 Deploying $SERVICE_NAME"
echo "📦 Version: $VERSION"
echo "📁 Namespace: $NAMESPACE"
echo ""

if ! kubectl cluster-info &>/dev/null; then
  echo "❌ Error: Cannot connect to cluster" >&2
  exit 1
fi
echo "✅ Connected to cluster"

if ! kubectl get namespace "$NAMESPACE" &>/dev/null; then
  echo "❌ Error: Namespace $NAMESPACE does not exist. Run deploy-to-k3s.sh first." >&2
  exit 1
fi
echo "✅ Namespace $NAMESPACE exists"
echo ""

if [ -z "$DOCKERHUB_USERNAME" ]; then
  echo "❌ Error: DOCKERHUB_USERNAME is required" >&2
  exit 1
fi
export IMAGE_VERSION="$DOCKERHUB_USERNAME/java-swing-tutor-service:$VERSION"

echo "🚀 Applying backend manifest (version: $VERSION)..."
envsubst < "$DEPLOYMENT_DIR/deployment.yaml" | kubectl apply -f -
kubectl apply -f "$DEPLOYMENT_DIR/service.yaml"
kubectl apply -f "$DEPLOYMENT_DIR/network-policy.yaml"

echo ""
echo "⏳ Waiting for deployment..."
kubectl wait --for=condition=available --timeout=300s "deployment/$SERVICE_NAME" -n "$NAMESPACE" || true

echo ""
echo "✅ $SERVICE_NAME deployment completed!"
kubectl get pods -n "$NAMESPACE" -l app=$SERVICE_NAME
echo ""
echo "💡 View logs: kubectl logs -f deployment/$SERVICE_NAME -n $NAMESPACE"
