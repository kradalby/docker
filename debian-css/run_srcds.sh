#!/usr/bin/env bash
docker run \
    -p 27015:27015 -p 27015:27015/udp \
    -it kradalby/debian-css \
    -game cstrike \
    -console \
    -usercon \
    +map de_dust2 \
    +rcon_password passwrd \
    -debug \
    -allowdebug
