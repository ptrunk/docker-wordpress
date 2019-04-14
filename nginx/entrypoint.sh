#!/bin/sh

sed -i 's@BACKEND_HOST@'"$BACKEND_HOST"'@' /etc/nginx/nginx.conf
sed -i 's@BACKEND_PORT@'"$BACKEND_PORT"'@' /etc/nginx/nginx.conf

nginx -g "daemon off;"
