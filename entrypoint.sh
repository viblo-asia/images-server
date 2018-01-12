#!/bin/sh
echo "upstream database {\
    postgres_server ${DB_HOST:-postgres} dbname=${DB_DATABASE:-viblo} user=${DB_USERNAME:-postgres} password=${DB_PASSWORD:-postgres};\
}" > /etc/nginx/conf.d/upstream.conf

nginx -g "user www-data; daemon off; pid /run/nginx.pid;"
