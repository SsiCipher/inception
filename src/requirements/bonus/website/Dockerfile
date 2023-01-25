FROM alpine:latest

RUN apk update && apk upgrade && apk add --no-cache php

COPY ./src/ /var/website

ENTRYPOINT [ "php", "-S", "0.0.0.0:4123", "-t", "/var/website" ]
