FROM alpine:3.8
MAINTAINER Jason Lentink <jason@mediamonks.com>

RUN apk add bash libpng libpng-dev yarn g++ make && \
mkdir /application && \
rm -rf /var/cache/apk/*

WORKDIR /application

CMD yarn ; yarn build
