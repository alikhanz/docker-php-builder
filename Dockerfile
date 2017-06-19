FROM zalikhan/php:5.6-fpm-alpine

LABEL maintainer "alihan93.93@gmail.com"

VOLUME ["$HOME/.composer/cache", "/data"]

RUN set -xe \
    && apk add --no-cache --virtual .persistent-deps git \
    && curl -sS https://getcomposer.org/installer \
             | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /data
