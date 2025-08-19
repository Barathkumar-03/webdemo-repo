#!/usr/bin/env bash
set -euo pipefail
# CodeDeploy "files" section (in appspec.yml) already copied site files.
# Just ensure correct permissions if you need them (optional), then (re)start nginx.
sudo chown -R nginx:nginx /usr/share/nginx/html || true
sudo systemctl restart nginx
sleep 2
sudo systemctl status nginx --no-pager || true
