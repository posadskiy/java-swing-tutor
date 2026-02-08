#!/bin/bash
set -e

# install-k3s.sh - Install k3s on Ubuntu server
# Usage: ./install-k3s.sh <server_ip> <ssh_user>
#
# This script will:
# 1. SSH to the server
# 2. Install k3s
# 3. Configure kubectl access
# 4. Set up kubeconfig for remote access

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <server_ip> <ssh_user>"
  echo "Example: $0 192.168.1.100 admin"
  exit 1
fi
SERVER_IP=$1
SSH_USER=$2

echo "Installing k3s on server: $SSH_USER@$SERVER_IP"

# Check SSH access
echo "Checking SSH access..."
if ! ssh -o ConnectTimeout=5 -o StrictHostKeyChecking=no "$SSH_USER@$SERVER_IP" "echo 'SSH connection successful'" 2>/dev/null; then
  echo "Error: Cannot connect to server via SSH"
  echo "Please ensure:"
  echo "  1. SSH key is set up for passwordless access"
  echo "  2. Server is accessible at $SERVER_IP"
  echo "  3. SSH user '$SSH_USER' has sudo privileges"
  exit 1
fi

echo "SSH connection successful"

# Install k3s
echo "Installing k3s..."
ssh "$SSH_USER@$SERVER_IP" << 'EOF'
  # Update system
  sudo apt-get update -y

  # Install k3s
  curl -sfL https://get.k3s.io | sh -

  # Wait for k3s to be ready
  echo "Waiting for k3s to be ready..."
  sudo k3s kubectl wait --for=condition=ready node --all --timeout=300s

  # Get kubeconfig
  sudo cat /etc/rancher/k3s/k3s.yaml
EOF

echo ""
echo "✅ k3s installation completed!"
echo ""
echo "Next steps:"
echo "1. Copy the kubeconfig output above"
echo "2. Replace '127.0.0.1' with '$SERVER_IP' in the kubeconfig"
echo "3. Save it to ~/.kube/config or set KUBECONFIG environment variable"
echo ""
echo "Or run: ssh $SSH_USER@$SERVER_IP 'sudo cat /etc/rancher/k3s/k3s.yaml' | sed 's/127.0.0.1/$SERVER_IP/' > ~/.kube/config"
