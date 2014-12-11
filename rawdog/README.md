# Docker container for rawdog

## Quickstart

Configure rawdog to write its output to /html and put that configuration
in `/data/config`.

```sh
docker pull poxar/rawdog

docker run --name rawdog \
  -v=/data/rawdog:/config \
  -v=/srv/http/rawdog:/html \
   poxar/rawdog
```

Then serve the directory `/srv/http/rawdog`.

This will run rawdog only once. Set up a cron job or systemd task to schedule
runs.
