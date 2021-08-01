# version 0.0.1
FROM php:7.4-fpm-alpine
MAINTAINER JesseHu "hu2014jesse@gmail.com"

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN mkdir -p /data1/www

RUN docker-php-ext-install pdo_mysql opcache

RUN apk add libc-dev gcc autoconf make

RUN pecl install -o -f redis \
&& rm -rf /tmp/pear \
&& docker-php-ext-enable redis

ENTRYPOINT ["docker-php-entrypoint"]

VOLUME ["/data1/www"]

WORKDIR /data1/www

CMD ["php-fpm", "-F"]

EXPOSE 9000 9200
