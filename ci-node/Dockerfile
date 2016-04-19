FROM debian:latest
MAINTAINER Kristoffer Dalby <kradalby@kradalby.no>

# Update system libraries
RUN apt-get update && apt-get upgrade -y
RUN apt-get install apt-transport-https -y

# Install all build requirements
RUN apt-get install -y build-essential wget curl

# VCS
RUN apt-get install -y git

# Install Node repositories
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -


# Update and install node
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nodejs -y
RUN apt-get dist-upgrade -y

# Install wine
RUN apt-get install wine -y
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install wine32 -y

# Clean everything
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
