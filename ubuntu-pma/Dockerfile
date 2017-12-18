FROM onix-base-ubuntu
LABEL maintainer="devops@onix-systems.com"

COPY server.init /server.init

RUN sh entry.sh

EXPOSE 80
ENTRYPOINT [ "/entrypoint.sh" ]
