#!/usr/bin/env bash
set -euo pipefail
set -x

# Files already copied by appspec 'files:' into /usr/share/nginx/html
sudo chown -R nginx:nginx /usr/share/nginx/html || true
sudo restorecon -R /usr/share/nginx/html 2>/dev/null || true  # harmless if SELinux not enabled

sudo systemctl restart nginx
sleep 2
sudo systemctl status nginx --no-pager || true
