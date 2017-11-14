FROM ubuntu:16.04
MAINTAINER nikolay.bilokonenko@onix-systems.com

RUN mkdir server.init

COPY entry.sh entry.sh
RUN chmod +x /entry.sh

ENTRYPOINT [ "sh", "/entry.sh" ]
