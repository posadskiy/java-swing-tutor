#!/bin/bash
# get-version.sh - Extract version from pom.xml or package.json
# Usage: ./get-version.sh [dir]
# If dir is not provided, uses current directory.
# Looks for pom.xml first (Maven), then package.json (Node).

SERVICE_DIR=${1:-"."}

if [ -f "$SERVICE_DIR/pom.xml" ]; then
  # Extract version from pom.xml - first <version> after root or parent
  VERSION=$(grep -m 1 "<version>" "$SERVICE_DIR/pom.xml" | sed -n 's/.*<version>\([^<]*\)<\/version>.*/\1/p' | head -1)
elif [ -f "$SERVICE_DIR/package.json" ]; then
  # Extract version from package.json
  VERSION=$(grep -o '"version"[[:space:]]*:[[:space:]]*"[^"]*"' "$SERVICE_DIR/package.json" | sed 's/.*"\([^"]*\)".*/\1/' | head -1)
else
  echo "Error: No pom.xml or package.json found in $SERVICE_DIR" >&2
  exit 1
fi

if [ -z "$VERSION" ]; then
  echo "Error: Could not extract version from $SERVICE_DIR" >&2
  exit 1
fi

echo "$VERSION"
