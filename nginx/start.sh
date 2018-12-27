#!/bin/bash

# Copy config files, if this is the first run
if [ ! -n "$(ls -A /config)" ]; then
	cp /etc/nginx/conf.d/* /config
fi

# Start nginx
nginx -g 'daemon off;'

