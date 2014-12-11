# Docker container for teamspeak

Logs and server configuration are stored in the /data volume for easy access.

## Quickstart

```sh
docker pull poxar/teamspeak

docker run --name teamspeak \
  -p=9987:9987/udp \
  -p=10011:10011 \
  -p=30033:30033 \
  -v=/data/teamspeak:/data \
  poxar/teamspeak
```

