FROM hypriot/rpi-alpine:3.6

MAINTAINER Oleg Kovalenko <monstrenyatko@gmail.com>

RUN apk update && \
    apk add --no-cache ca-certificates apache2-utils && \
    rm -rf /tmp/* /var/tmp/* && \
    rm -rf /var/cache/apk/*

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY registry/config-example.yml /etc/docker/registry/config.yml

COPY registry/registry /bin/registry
RUN chmod +x /bin/registry

VOLUME ["/var/lib/registry"]

EXPOSE 5000

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/etc/docker/registry/config.yml"]
