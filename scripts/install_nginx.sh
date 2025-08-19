#!/usr/bin/env bash
set -euo pipefail
sudo dnf update -y
sudo dnf install -y nginx curl
sudo systemctl enable nginx
sudo systemctl start nginx
