#!/bin/bash
set -e

echo "Copying files..."
cp -r /var/www/html/* /var/www/html.bak || true
cp -r /tmp/codedeploy-deployment-staging-area/* /var/www/html/

echo "Setting permissions..."
chown -R ec2-user:ec2-user /var/www/html
chmod -R 755 /var/www/html
