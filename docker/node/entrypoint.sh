#!/bin/sh

mkdir -p /var/www/html/node_modules

cp -r /usr/src/cache/node_modules/. /var/www/html/node_modules/

exec npm start