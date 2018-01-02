# Start with nginx
FROM php:fpm-alpine

# By Rohit Goswami
LABEL maintainer="Rohit Goswami <rohit.1995@mail.ru>"
LABEL name="organizr-php"

RUN apk update
RUN apk add zlib-dev
RUN docker-php-ext-install zip