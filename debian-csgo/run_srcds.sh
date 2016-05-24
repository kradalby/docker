#!/usr/bin/env bash
docker run \
    -p 27015:27015 -p 27015:27015/udp \
    -it kradalby/debian-csgo \
    -game csgo \
    -console \
    -usercon \
    +game_type 0 \
    +game_mode 0 \
    +mapgroup mg_bomb \
    +map de_dust2 \
    +rcon_password passwrd \
    -debug \
    -allowdebug
