FROM homeassistant/home-assistant:latest

MAINTAINER Cadster <cadsters@hotmail.com>

RUN apt-get update
RUN apt-get install -y jq nmap lsof apt-transport-https netcat

RUN apt-get install -y --fix-missing \
    build-essential \
    cmake \
    gfortran \
    git \
    wget \
    curl \
    graphicsmagick \
    libgraphicsmagick1-dev \
    libatlas-base-dev \
    libavcodec-dev \
    libavformat-dev \
    libboost-all-dev \
    libgtk2.0-dev \
    libjpeg-dev \
    liblapack-dev \
    libswscale-dev \
    pkg-config \
    python3-dev \
    python3-numpy \
    software-properties-common \
    socat \
    zip \
    && apt-get clean && rm -rf /tmp/* /var/tmp/*

EXPOSE 8123:8123
