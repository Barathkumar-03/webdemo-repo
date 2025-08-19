#!/usr/bin/env bash
set -euo pipefail
# Amazon Linux 2023 uses dnf
sudo dnf update -y
sudo dnf install -y nginx curl
# make sure nginx is enabled and not blocking the file copy
sudo systemctl enable nginx
sudo systemctl stop nginx || true
