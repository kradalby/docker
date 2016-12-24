# Docker-tftpd
FROM debian:jessie

MAINTAINER Kristoffer Dalby <kradalby@kradalby.no>

# Install tftpd-hpa deamon
RUN apt-get update
RUN apt-get install -y tftpd-hpa

EXPOSE 69/udp

RUN mkdir -p /srv/tftp
RUN chown -R tftp:tftp /srv/tftp && chmod -R 777 /srv/tftp

CMD /usr/sbin/in.tftpd -vvvv --foreground --user tftp --address 0.0.0.0:69 --create --permissive --secure /srv/tftp
