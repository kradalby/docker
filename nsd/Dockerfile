FROM debian:latest

MAINTAINER Kristoffer Dalby <kradalby@kradalby.no>

ENV DEBIAN_FRONTEND noninteractive

# Update system libraries
RUN apt-get update && apt-get upgrade -y

# Install all build requirements
RUN apt-get update
RUN apt-get install -y nsd

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 53/udp

VOLUME ["/etc/nsd", "/var/log/nsd"]

COPY docker-entrypoint.sh /entrypoint.sh
# ENTRYPOINT ["/entrypoint.sh"]
