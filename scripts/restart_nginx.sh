#!/usr/bin/env bash
set -euo pipefail
sudo systemctl restart nginx
sleep 2
sudo systemctl status nginx --no-pager || true
