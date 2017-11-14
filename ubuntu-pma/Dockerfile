FROM onix-base-ubuntu
MAINTAINER nikolay.bilokonenko@onix-systems.com

COPY server.init /server.init

RUN sh entry.sh

EXPOSE 80
ENTRYPOINT [ "/entrypoint.sh" ]

# docker run -d --rm --link mysql:mysql -p 80:80 -v $(pwd)/server.init/pma/db_hosts.php:/var/www/html/db_hosts.php --name pma base-test2