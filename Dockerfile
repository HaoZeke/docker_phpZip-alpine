# Start with nginx
FROM php:fpm-alpine

# By Rohit Goswami
LABEL maintainer="Rohit Goswami <rohit.1995@mail.ru>"
LABEL name="organizr-php"

RUN apk add php7-zip
RUN docker-php-ext-install zip

# Setup
COPY getOrganizr.sh /bin/
RUN getOrganizr.sh
RUN chmod -R 777 /www
RUN mkdir /config
RUN chmod -R 777 /config