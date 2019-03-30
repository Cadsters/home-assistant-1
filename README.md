# home-assistant
custom home-assistant docker

added:
- jq
- nmap
- socat

```
docker run -d \
--name="home-assistant" \
--net=host \
--restart=always \
-p 8123:8123 \
-v /volume1/docker/home-assistant/config:/config \
-v /etc/localtime:/etc/localtime:ro \
-v /volume1/docker/cert:/etc/cert:ro \
Cadsters/home-assistant-docker
```
forked from Henrik Nicolaisen

see https://hub.docker.com/r/homeassistant/home-assistant/ for more info
