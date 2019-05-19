FROM wordpress:5.2.0-php7.3-fpm

ENV PHP_MEMORY_LIMIT=512M \
    REDIS_VERSION=4.3.0

## Redis Support
RUN echo "no\n" | pecl install redis-${REDIS_VERSION} \
    && docker-php-ext-enable redis \
    && rm -rf /tmp/pear

## Customize PHP configuration
COPY wordpress.ini /usr/local/etc/php/conf.d/

