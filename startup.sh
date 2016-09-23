#!/bin/bash
cp /tmp/index.html /usr/share/nginx/html/
nginx -g 'daemon off;'
