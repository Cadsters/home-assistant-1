FROM homeassistant/home-assistant:stable

MAINTAINER Cadster <cadsters@hotmail.com>

RUN apk add --no-cache jq nmap socat

RUN apk add picotts --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing

EXPOSE 8123:8123
