#!/usr/bin/sh

mkdir -p /var/www/html
cd /var/www/html

PHPMYADMIN_VERSION=4.7.5 && \
apt-get update && \
apt-get install -y curl apache2 php libapache2-mod-php php-mcrypt php-mysql libbz2-dev zlib1g-dev php-mbstring php-gettext zip && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* && \

curl https://files.phpmyadmin.net/phpMyAdmin/${PHPMYADMIN_VERSION}/phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages.tar.gz | tar --extract --gunzip --file - --strip-components 1 && \
rm -rf index.html && \
rm -rf examples && \
rm -rf setup && \
rm -rf sql


cp /server.init/pma/docker-htaccess /var/www/html/.htaccess
cp /server.init/pma/config.inc.php /var/www/html/config.inc.php
cp /server.init/pma/docker-entrypoint.sh /entrypoint.sh
[[ -e /server.init/pma/db_hosts.php ]] && cp /server.init/pma/db_hosts.php /var/www/html/db_hosts.php

phpenmod mcrypt
phpenmod mbstring
