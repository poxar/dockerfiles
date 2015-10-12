# Extended Dockerfile for miniflux

See [miniflux/miniflux](https://github.com/miniflux/miniflux) for documentation
about miniflux. This image is based on the official miniflux image, but extends
it a bit to make all apache logs available via `docker logs` and to adjust the
ownership of the `/var/www/html/data` directory, so it can be easily
bind-mounted to data-only containers or the local filesystem.

## Quickstart

```sh
docker run --name miniflux \
  -p 80:80 \
  -v $PWD/db.sqlite:/var/www/html/data/db.sqlite \
  poxar/miniflux
```
