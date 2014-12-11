# Docker container for taskd (taskwarrior server)

Logs and server configuration/data are stored in the /data volume for easy access.

## Quickstart with existing configuration

Put your configuration in /data/taskd.

```sh
docker pull poxar/taskd

docker run --name taskd \
  -p=53589:53589
  -v=/data/taskd:/data
  poxar/taskd
```

## How to configure taskd

First pull the container.

```sh
docker pull poxar/taskd
```

Configure as described
[here](http://taskwarrior.org/docs/taskserver/configure.html). Remember to
invoke taskd as `taskd --data /data` to store the configuration in the volume.

```sh
docker run --name taskd \
  -v=/data/taskd:/data \
  -it poxar/taskd /bin/bash
```

Finally run the container.

```sh
docker run --name taskd \
  -p=53589:53589
  -v=/data/taskd:/data
  poxar/taskd
```

