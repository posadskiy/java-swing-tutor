#!/bin/bash
set -e

# build-and-push.sh - Build and push java-swing-tutor-service to Docker Hub
# Usage: ./build-and-push.sh <version>
# Build context: repo root (Dockerfile at service/Dockerfile).
# Flyway is built and deployed separately from flyway/.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEPLOYMENT_DIR="$(dirname "$(dirname "$SCRIPT_DIR")")"
REPO_ROOT="$(dirname "$DEPLOYMENT_DIR")"
IMAGE_NAME="java-swing-tutor-service"

if [ -z "$DOCKERHUB_USERNAME" ] || [ -z "$DOCKERHUB_TOKEN" ]; then
  echo "Error: DOCKERHUB_USERNAME and DOCKERHUB_TOKEN are required" >&2
  exit 1
fi
if [ $# -lt 1 ]; then
  echo "Usage: $0 <version>" >&2
  exit 1
fi
VERSION=$1
TAG_DATE=$(date +%Y%m%d%H%M%S)

echo "🚀 Building and pushing $IMAGE_NAME (version: $VERSION)..."
docker buildx build --platform linux/arm64 \
  -f "$REPO_ROOT/service/Dockerfile" \
  -t "$DOCKERHUB_USERNAME/$IMAGE_NAME:$VERSION" \
  -t "$DOCKERHUB_USERNAME/$IMAGE_NAME:$TAG_DATE" \
  -t "$DOCKERHUB_USERNAME/$IMAGE_NAME:latest" \
  "$REPO_ROOT/" --push

echo "✅ $IMAGE_NAME image built and pushed successfully!"
