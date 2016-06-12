FROM debian:latest
MAINTAINER Kristoffer Dalby <kradalby@kradalby.no>

# Add repo for multiple python versions
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys DB82666C
RUN gpg --export DB82666C | apt-key add -

# Update system libraries
RUN apt-get update && apt-get upgrade -y

RUN apt-get install apt-transport-https ca-certificates -y

COPY deadsnakes.list /etc/apt/sources.list.d/

RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
RUN echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list


# Update system libraries
RUN apt-get update && apt-get upgrade -y

# Install all build requirements
RUN apt-get install -y \
    autoconf \
    build-essential \
    imagemagick \
    libbz2-dev \
    libcurl4-openssl-dev \
    libevent-dev \
    libffi-dev \
    libglib2.0-dev \
    libjpeg-dev \
    libmagickcore-dev \
    libmagickwand-dev \
    libmysqlclient-dev \
    libncurses-dev \
    libpq-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    libxml2-dev \
    libxslt-dev \
    libyaml-dev \
    zlib1g-dev \
    docker-engine

# Other requirement
RUN apt-get install -y curl socat postgresql-client

# VCS
RUN apt-get install -y git

# Python with latest 'pip' and 'tox'
RUN apt-get install -y python-dev python-pip python3-dev python3-pip
RUN apt-get install -y python3.3
RUN python -m pip install -U pip
RUN python3 -m pip install -U pip
RUN python -m pip install tox
RUN python -m pip install ansible
RUN python -m pip install virtualenv

# Clean everything
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
