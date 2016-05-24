FROM kradalby/debian-steamcmd

MAINTAINER Kristoffer Dalby <kradalby@kradalby.no>

RUN useradd -b /srv/steam -d /srv/steam -m -s /bin/bash steam
USER steam

# Install CS:GO
RUN mkdir /srv/steam/csgo
RUN /opt/steamcmd/steamcmd.sh \
        +login anonymous \
        +force_install_dir /srv/steam/csgo \
        +app_update 740 validate \
        +quit

USER root
RUN apt update
RUN apt install gdb-minimal -y

USER steam
# Make server port available to host
EXPOSE 27015

# This container will be executable
WORKDIR /srv/steam/csgo
ENTRYPOINT ["./srcds_run"]
