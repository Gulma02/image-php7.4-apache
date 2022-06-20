FROM php:7.4-apache

COPY . /var/www
WORKDIR /var/www

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN apt-get update
RUN apt-get install -y libzip-dev
RUN docker-php-ext-install zip

RUN a2enmod rewrite

EXPOSE 80