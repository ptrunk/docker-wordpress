FROM nginx:1.17.3-alpine

LABEL description="Wordpress nginx proxy" \
      maintainer="Paul Trunk <mail@p7k.org>"

ENV BACKEND_HOST=127.0.0.1 \
    BACKEND_PORT=9000

RUN apk add --no-cache curl

COPY *.conf /etc/nginx/
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
