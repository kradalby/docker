FROM kradalby/debian-steamcmd

MAINTAINER Kristoffer Dalby <kradalby@kradalby.no>

RUN useradd -b /srv/steam -d /srv/steam -m -s /bin/bash steam
USER steam

# Install CSS
RUN mkdir /srv/steam/css
RUN /opt/steamcmd/steamcmd.sh \
        +login anonymous \
        +force_install_dir /srv/steam/css \
        +app_update 232330 validate \
        +quit

USER root
RUN apt update
RUN apt install gdb-minimal -y

USER steam
# Make server port available to host
EXPOSE 27015

# This container will be executable
WORKDIR /srv/steam/css
ENTRYPOINT ["./srcds_run"]
