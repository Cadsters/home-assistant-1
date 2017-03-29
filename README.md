# home-assistant
custom home-assistant docker

```
docker run -d \
--name="home-assistant" \
--net=host \
--restart=always \
-p 8123:8123 \
-v /volume1/docker/home-assistant/config:/config \
-v /etc/localtime:/etc/localtime:ro \
-v /volume1/docker/cert:/etc/cert:ro \
hnicolaisen/home-assistant
```

see https://hub.docker.com/r/homeassistant/home-assistant/ for more info
