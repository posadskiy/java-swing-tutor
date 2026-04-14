#!/bin/bash
set -e

# build-and-push.sh - Build and push java-swing-tutor-website to Docker Hub
# Usage: ./build-and-push.sh <version>
# Run from website/ root.
#
# Requires: DOCKERHUB_TOKEN (DOCKERHUB_USERNAME defaults to posadskiy)
# Optional: GRAFANA_OBSERVABILITY_FARO_TOKEN — forwarded as Docker build-arg for source map upload
# --no-cache avoids stale Next.js static output (e.g. missing Faro in client bundles).

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WEBSITE_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"
IMAGE_NAME="java-swing-tutor-website"
DOCKERHUB_USERNAME="${DOCKERHUB_USERNAME:-posadskiy}"

if [ -z "$DOCKERHUB_TOKEN" ]; then
  echo "Error: DOCKERHUB_TOKEN is required" >&2
  exit 1
fi
if [ $# -lt 1 ]; then
  echo "Usage: $0 <version>" >&2
  exit 1
fi
VERSION=$1

BUILD_ARGS=()
if [ -n "${GRAFANA_OBSERVABILITY_FARO_TOKEN:-}" ]; then
  BUILD_ARGS+=(--build-arg "GRAFANA_OBSERVABILITY_FARO_TOKEN=$GRAFANA_OBSERVABILITY_FARO_TOKEN")
  echo "📎 Passing GRAFANA_OBSERVABILITY_FARO_TOKEN for Faro source map upload"
fi

echo "🚀 Building and pushing $DOCKERHUB_USERNAME/$IMAGE_NAME (version: $VERSION)..."
docker buildx build --platform linux/arm64 --no-cache \
  "${BUILD_ARGS[@]}" \
  -f "$WEBSITE_ROOT/Dockerfile" \
  -t "$DOCKERHUB_USERNAME/$IMAGE_NAME:$VERSION" \
  -t "$DOCKERHUB_USERNAME/$IMAGE_NAME:latest" \
  "$WEBSITE_ROOT" --push

echo "✅ $IMAGE_NAME image built and pushed successfully!"
