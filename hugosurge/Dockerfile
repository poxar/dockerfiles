FROM alpine:3.4

RUN echo @testing http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
RUN apk add --no-cache nodejs hugo@testing bash
RUN npm install -g surge && npm cache clear
