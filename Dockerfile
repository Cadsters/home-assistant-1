FROM homeassistant/home-assistant:latest

MAINTAINER Henrik Nicolaisen <henrik@nicolaisen.co>

RUN apt-get update
RUN apt-get install -y jq nmap lsof apt-transport-https netcat
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install -y nodejs
RUN npm install ps4-waker@1.1.1 -g

RUN apt-get install -y build-essential cmake
RUN apt-get install -y libgtk-3-dev
RUN apt-get install -y libboost-all-dev

RUN pip3 install --no-cache-dir numpy
RUN pip3 install --no-cache-dir scipy
RUN pip3 install --no-cache-dir scikit-image
RUN pip3 install --no-cache-dir dlib

EXPOSE 8123:8123
