FROM debian:latest
MAINTAINER Kristoffer Dalby <kradalby@kradalby.no>

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
    zlib1g-dev

# Other requirement
RUN apt-get install -y curl socat postgresql-client

# VCS
RUN apt-get install -y git

# Python with latest 'pip' and 'tox'
RUN apt-get install -y python-dev python-pip python3-dev python3-pip
RUN python -m pip install -U pip
RUN python3 -m pip install -U pip
RUN python -m pip install tox

# Clean everything
RUN apt-get clean && rm -rf /var/lib/apt/lists/* && npm cache clear
