FROM zalikhan/php:7.1-fpm-alpine

LABEL maintainer "alihan93.93@gmail.com"

VOLUME ["~/.composer/cache", "/data"]

RUN set -xe \
    apk add --no-cache --virtual .persistent-deps git \
    && curl -sS https://getcomposer.org/installer \
             | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /data
