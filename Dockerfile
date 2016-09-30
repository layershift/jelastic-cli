FROM bbania/jdk:8-alpine
MAINTAINER "Bart Bania" <contact@bartbania.com>

RUN apk add --update curl wget bash && \
    rm -rf /var/cache/apk/*

WORKDIR /root

RUN curl -s ftp://ftp.jelastic.com/pub/cli/jelastic-cli-installer.sh | bash

COPY ./entry.sh /
COPY ./jelastic.properties /root/.config/jelastic/jelastic.properties

ENTRYPOINT /entry.sh
