FROM docker.io/alpine:latest
MAINTAINER Criz

ADD entrypoint.tar.gz /usr/local/bin/.

RUN apk add git maven openjdk8 openjdk11 openjdk17 --no-cache \
 && mkdir /workspace \
 && chmod a+x /usr/local/bin/entrypoint.sh

WORKDIR /workspace

ENTRYPOINT ["entrypoint.sh"]
