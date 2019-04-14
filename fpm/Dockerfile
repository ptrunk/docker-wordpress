FROM wordpress:php7.3-fpm

ENV REDIS_VERSION=4.3.0

## Redis Support
RUN echo "no\n" | pecl install redis-${REDIS_VERSION} \
    && docker-php-ext-enable redis \
    && rm -rf /tmp/pear

