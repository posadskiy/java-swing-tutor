#!/bin/bash
set -e

# create-registry-secret.sh - Create Kubernetes secret for Docker Hub authentication
# Usage: ./create-registry-secret.sh [namespace]
#
# Required environment variables:
#   DOCKERHUB_USERNAME - Docker Hub username (required, set in environment)
#   DOCKERHUB_TOKEN - Docker Hub access token or password (required)

NAMESPACE=${1:-"java-swing-tutor"}

if [ -z "$DOCKERHUB_USERNAME" ]; then
  echo "Error: DOCKERHUB_USERNAME environment variable is required"
  exit 1
fi
if [ -z "$DOCKERHUB_TOKEN" ]; then
  echo "Error: DOCKERHUB_TOKEN environment variable is required"
  echo "You can create a token at: https://hub.docker.com/settings/security"
  exit 1
fi

echo "Creating Docker Hub registry secret in namespace: $NAMESPACE"
echo "Using Docker Hub username: $DOCKERHUB_USERNAME"

# Create the secret using kubectl
kubectl create secret docker-registry dockerhub-registry-secret \
  --docker-server=https://index.docker.io/v1/ \
  --docker-username="$DOCKERHUB_USERNAME" \
  --docker-password="$DOCKERHUB_TOKEN" \
  --namespace="$NAMESPACE" \
  --dry-run=client -o yaml | kubectl apply -f -

echo "✅ Docker Hub registry secret created successfully!"
echo "Secret name: dockerhub-registry-secret"
echo "Namespace: $NAMESPACE"
