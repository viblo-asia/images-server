#!/bin/sh

envsubst < /etc/nginx/conf.templates/nginx.conf > /etc/nginx/nginx.conf
envsubst < /etc/nginx/conf.templates/upstream.conf > /etc/nginx/conf.d/upstream.conf

mkdir -p /data/www
chown www-data:www-data /data/www

nginx -g "user www-data; daemon off; pid /run/nginx.pid;"
