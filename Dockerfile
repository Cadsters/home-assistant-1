FROM homeassistant/home-assistant:stable

MAINTAINER Cadster <cadsters@hotmail.com>

RUN apk add --no-cache jq nmap socat nodejs npm

RUN apk add picotts --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing

ENV MUSL_LOCALE_DEPS cmake make musl-dev gcc gettext-dev libintl 
ENV MUSL_LOCPATH /usr/share/i18n/locales/musl

RUN apk add --no-cache \
    $MUSL_LOCALE_DEPS \
    && wget https://gitlab.com/rilian-la-te/musl-locales/-/archive/master/musl-locales-master.zip \
    && unzip musl-locales-master.zip \
      && cd musl-locales-master \
      && cmake -DLOCALE_PROFILE=OFF -D CMAKE_INSTALL_PREFIX:PATH=/usr . && make && make install \
      && cd .. && rm -r musl-locales-master

EXPOSE 8123:8123
