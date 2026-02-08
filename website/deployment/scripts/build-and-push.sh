#!/bin/bash
set -e

# build-and-push.sh - Build and push java-swing-tutor-website to Docker Hub
# Usage: ./build-and-push.sh <version>
# Run from website/ root.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SERVICE_DEPLOYMENT="$(dirname "$(dirname "$SCRIPT_DIR")")"
SERVICE_ROOT="$(dirname "$SERVICE_DEPLOYMENT")"
IMAGE_NAME="java-swing-tutor-website"

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
docker buildx build --platform linux/arm64,linux/amd64 \
  -f "$SERVICE_ROOT/Dockerfile" \
  -t "$DOCKERHUB_USERNAME/$IMAGE_NAME:$VERSION" \
  -t "$DOCKERHUB_USERNAME/$IMAGE_NAME:$TAG_DATE" \
  -t "$DOCKERHUB_USERNAME/$IMAGE_NAME:latest" \
  "$SERVICE_ROOT/" --push

echo "✅ $IMAGE_NAME image built and pushed successfully!"
