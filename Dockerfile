FROM homeassistant/home-assistant:latest

MAINTAINER Henrik Nicolaisen <henrik@nicolaisen.co>

RUN apt-get update
RUN apt-get install -y jq nmap lsof apt-transport-https netcat
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install -y nodejs
RUN npm install ps4-waker -g

EXPOSE 8123:8123
