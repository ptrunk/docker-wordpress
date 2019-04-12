FROM wordpress:5.1.1

ENV WP_SMTP_PLUGIN_URL=https://downloads.wordpress.org/plugin/wp-mail-smtp.1.4.2.zip

## Redis Support
RUN echo "no\n" | pecl install redis-${REDIS_VERSION} \
    && docker-php-ext-enable redis \
    && rm -rf /tmp/pear

RUN apt-get update && apt-get install -y unzip

RUN curl --output /tmp/wp-mail-stmp.tar ${WP_SMTP_PLUGIN_URL} \
    && unzip -q /tmp/wp-mail-stmp.tar -d /usr/src/wordpress/wp-content/plugins/wp-mail-smtp

