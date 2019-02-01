FROM alpine:3.9
LABEL maintainer="ryan@ryansheppard.me"

EXPOSE 53/udp

RUN apk add --update unbound openssl

COPY unbound.conf /etc/unbound/unbound.conf

ENTRYPOINT ["/usr/sbin/unbound"]
CMD ["-c", "/etc/unbound/unbound.conf", "-d"]
