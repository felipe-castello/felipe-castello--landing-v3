#!/usr/bin/env bash
set -euo pipefail
APP_DIR="/var/www/nexusiotenergy"
mkdir -p "$APP_DIR"
cp -r index.html styles.css script.js favicon.svg site.webmanifest robots.txt sitemap.xml logo-nexus-iot-energy.jpg logo-nexus-transparente.png assets "$APP_DIR"/
chown -R www-data:www-data "$APP_DIR"
chmod -R 755 "$APP_DIR"
systemctl reload nginx
printf "Landing page atualizada em %s\n" "$APP_DIR"
