FROM alpine:3.4
MAINTAINER nownabe

RUN apk add --no-cache --update dnsmasq \
  && mkdir /etc/dnsmasq.d
COPY dnsmasq.conf /etc/dnsmasq.conf

EXPOSE 53
CMD /usr/sbin/dnsmasq --no-daemon
