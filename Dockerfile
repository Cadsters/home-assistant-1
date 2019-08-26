FROM homeassistant/home-assistant:latest

MAINTAINER Cadster <cadsters@hotmail.com>

RUN apk add --no-cache curl jq netcat nmap socat

EXPOSE 8123:8123
