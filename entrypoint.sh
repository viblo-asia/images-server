#!/bin/sh

envsubst '${WORKER_PROCESSES}' < /etc/nginx/conf.templates/nginx.conf > /etc/nginx/nginx.conf
envsubst '${IMAGINARY_HOST}' < /etc/nginx/conf.templates/images.conf > /etc/nginx/images.conf

nginx -g "daemon off; pid /run/nginx.pid;"
