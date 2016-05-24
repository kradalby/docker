FROM debian:latest

MAINTAINER Kristoffer Dalby <kradalby@kradalby.no>

ENV DEBIAN_FRONTEND noninteractive

# Update system libraries
RUN apt-get update && apt-get upgrade -y

# Install all build requirements
RUN apt-get update &&\
    apt-get install -y curl lib32gcc1

RUN mkdir -p /opt/steamcmd &&\
    cd /opt/steamcmd &&\
    curl -s http://media.steampowered.com/installer/steamcmd_linux.tar.gz | tar -vxz

RUN /opt/steamcmd/steamcmd.sh +login anonymous +quit

WORKDIR /opt/steamcmd

# Clean everything
RUN apt-get clean && rm -rf /var/lib/apt/lists/*


ENTRYPOINT ["./steamcmd.sh"]
