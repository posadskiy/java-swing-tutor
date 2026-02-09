#!/bin/bash
set -e

# deploy.sh - Run Flyway migration Job on k3s.
# Deploy this before the backend service (run from flyway/ or use path to this script).
# Cluster must be prepared via java-swing-tutor/deployment/scripts/k3s/deploy-to-k3s.sh
# Usage: ./deploy.sh <version>

FLYWAY_JOB_NAME="flyway-migrate"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEPLOYMENT_DIR="$(dirname "$SCRIPT_DIR")"
NAMESPACE="java-swing-tutor"

if [ $# -lt 1 ]; then
  echo "Usage: $0 <version>" >&2
  exit 1
fi
VERSION=$1

echo "🔄 Deploying Flyway migrations"
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
export FLYWAY_IMAGE="$DOCKERHUB_USERNAME/java-swing-tutor-flyway:$VERSION"

echo "🔄 Running Flyway migration Job..."
kubectl delete job "$FLYWAY_JOB_NAME" -n "$NAMESPACE" --ignore-not-found=true
envsubst < "$DEPLOYMENT_DIR/flyway-job.yaml" | kubectl apply -f -
echo "⏳ Waiting for Job to complete..."
kubectl wait --for=condition=complete --timeout=600s "job/$FLYWAY_JOB_NAME" -n "$NAMESPACE" || {
  echo "❌ Flyway Job failed or timed out. Check: kubectl logs job/$FLYWAY_JOB_NAME -n $NAMESPACE" >&2
  exit 1
}

echo ""
echo "✅ Flyway migrations completed!"
kubectl get job "$FLYWAY_JOB_NAME" -n "$NAMESPACE"
echo ""
echo "💡 Next: deploy the backend from service/ with ./deployment/scripts/deploy.sh $VERSION"
