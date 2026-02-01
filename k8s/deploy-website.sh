#!/bin/bash

# Deployment script for Java Swing Tutor Website
# Builds, pushes to Docker Hub, and deploys to Kubernetes.

set -e

# Configuration
DOCKER_USER="${DOCKER_USER:-posadskiy}"
IMAGE_NAME="java-swing-tutor-website"
IMAGE_TAG="${1:-latest}"
FULL_IMAGE="${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}Java Swing Tutor Website Deployment${NC}"
echo -e "${GREEN}========================================${NC}"

print_step() {
    echo -e "\n${YELLOW}>>> $1${NC}"
}

# Check if kubectl is configured
print_step "Checking kubectl configuration..."
if ! kubectl cluster-info &> /dev/null; then
    echo -e "${RED}Error: kubectl is not configured or cluster is not accessible${NC}"
    exit 1
fi
echo -e "${GREEN}✓ kubectl is configured${NC}"

# Build Docker image
print_step "Building Docker image..."
cd "$(dirname "$0")/../website"
docker build -t "${IMAGE_NAME}:${IMAGE_TAG}" .
echo -e "${GREEN}✓ Docker image built: ${IMAGE_NAME}:${IMAGE_TAG}${NC}"

# Tag for Docker Hub
print_step "Tagging image for Docker Hub..."
docker tag "${IMAGE_NAME}:${IMAGE_TAG}" "${FULL_IMAGE}"
echo -e "${GREEN}✓ Image tagged: ${FULL_IMAGE}${NC}"

# Push to Docker Hub
print_step "Pushing image to Docker Hub..."
docker push "${FULL_IMAGE}"
echo -e "${GREEN}✓ Image pushed to Docker Hub${NC}"

# Return to k8s directory
cd "$(dirname "$0")"

# Check if this is first deployment (deployment doesn't exist)
if ! kubectl get deployment java-swing-tutor-website -n default &> /dev/null; then
    print_step "First deployment detected - applying all manifests..."
    
    # Update image in deployment file
    sed -i.bak "s|image:.*java-swing-tutor-website.*|image: ${FULL_IMAGE}|" website-deployment.yaml
    rm -f website-deployment.yaml.bak
    
    kubectl apply -f website-deployment.yaml
    kubectl apply -f website-service.yaml
    kubectl apply -f website-network-policy.yaml
    kubectl apply -f website-ingress.yaml
    echo -e "${GREEN}✓ All manifests applied${NC}"
else
    # Update deployment image
    print_step "Updating Kubernetes deployment..."
    kubectl set image deployment/java-swing-tutor-website website="${FULL_IMAGE}" -n default
    echo -e "${GREEN}✓ Deployment image updated${NC}"
fi

# Wait for rollout
print_step "Waiting for rollout to complete..."
kubectl rollout status deployment/java-swing-tutor-website -n default --timeout=120s
echo -e "${GREEN}✓ Rollout completed${NC}"

# Show deployment status
print_step "Deployment status:"
kubectl get deployment java-swing-tutor-website -n default
echo ""
kubectl get pods -l app=java-swing-tutor-website -n default

echo -e "\n${GREEN}========================================${NC}"
echo -e "${GREEN}Deployment completed successfully!${NC}"
echo -e "${GREEN}========================================${NC}"
echo -e "Website URL: https://java-swing.com"
echo -e "Website URL: https://www.java-swing.com"
