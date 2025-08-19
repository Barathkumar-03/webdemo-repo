#!/usr/bin/env bash
set -euo pipefail
set -x

# Files are already copied to /usr/share/nginx/html by the 'files:' section in appspec.yml.
# Just ensure ownership is OK and (re)start nginx.

sudo chown -R nginx:nginx /usr/share/nginx/html || true
sudo restorecon -R /usr/share/nginx/html 2>/dev/null || true  # harmless if SELinux not present

sudo systemctl restart nginx
sleep 2
sudo systemctl status nginx --no-pager || true
