FROM php:fpm-alpine

RUN apk update && apk upgrade && apk add --no-cache wget

ENTRYPOINT [ "php-fpm", "--nodaemonize" ]
