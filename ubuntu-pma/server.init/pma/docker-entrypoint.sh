#!/bin/sh

set -e

test -z $UPLOAD_SIZE || sed -i "s/128M/$UPLOAD_SIZE/g" /var/www/html/.htaccess

apachectl -D FOREGROUND
exec "$@";