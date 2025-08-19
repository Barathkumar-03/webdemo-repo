#!/usr/bin/env bash
set -euo pipefail

# Keep packages current
sudo dnf -y update

# Ensure curl exists, but avoid conflicts with curl-minimal
if ! command -v curl >/dev/null 2>&1; then
  # One of these will succeed depending on what's available/installed
  sudo dnf install -y curl --allowerasing || sudo dnf install -y curl-minimal --allowerasing
fi

# Install/enable nginx; stop before CodeDeploy copies files
sudo dnf install -y nginx
sudo systemctl enable nginx
sudo systemctl stop nginx || true
