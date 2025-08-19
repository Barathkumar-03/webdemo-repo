#!/usr/bin/env bash
set -euo pipefail

# Keep packages current
sudo dnf -y update

# Install & prepare nginx only
sudo dnf -y install nginx
sudo systemctl enable nginx
# stop before CodeDeploy copies files into /usr/share/nginx/html
sudo systemctl stop nginx || true
