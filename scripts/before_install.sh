#!/usr/bin/env bash
set -euo pipefail
# Keep packages current; DO NOT install curl (conflicts with curl-minimal on AL2023)
sudo dnf -y update
sudo dnf -y install nginx
sudo systemctl enable nginx
# Stop before CodeDeploy overwrites the webroot
sudo systemctl stop nginx || true
