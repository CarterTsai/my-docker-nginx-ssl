#!/bin/sh
mkdir -p /etc/nginx/ssl/ &&
cp /root/script/server.crt /etc/nginx/ssl/ && cp /root/script/server.key /etc/nginx/ssl/ &&
cp /root/script/dhparam.pem /etc/nginx/ssl/ &&
envsubst < /root/config/nginx.template > /etc/nginx/conf.d/default.conf && 
nginx -g 'daemon off;'