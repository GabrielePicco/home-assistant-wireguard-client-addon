ARG BUILD_FROM=hassioaddons/base:7.0.2
FROM ${BUILD_FROM}

ARG NAME=wireguardclient

ENV LANG C.UTF-8

# Setup base
RUN apk -U upgrade
RUN apk add -U --no-cache ip6tables sudo
RUN apk add -U --no-cache openresolv wireguard-tools

COPY wg0-client.conf /etc/wireguard
COPY run.sh /

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "./run.sh" ]
