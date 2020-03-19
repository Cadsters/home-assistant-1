FROM homeassistant/home-assistant:stable

MAINTAINER Cadster <cadsters@hotmail.com>

RUN apk add --no-cache jq nmap socat

EXPOSE 8123:8123
