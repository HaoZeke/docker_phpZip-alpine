# Start with nginx
FROM php:fpm-alpine

# By Rohit Goswami
LABEL maintainer="Rohit Goswami <rohit.1995@mail.ru>"
LABEL name="organizr-php"

# Install requirements
RUN apk update
RUN apk add zlib-dev git
RUN docker-php-ext-install zip

# Setup
# COPY getOrganizr.sh /bin/
# RUN getOrganizr.sh

RUN mkdir /www
RUN chmod -R 777 /www
RUN mkdir /config
RUN chmod -R 777 /config

VOLUME /www /config