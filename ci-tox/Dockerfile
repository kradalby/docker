FROM debian:latest
MAINTAINER Kristoffer Dalby <kradalby@kradalby.no>

# Add repo for multiple python versions
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys DB82666C
RUN gpg --export DB82666C | apt-key add -

# Update system libraries
RUN apt-get update && apt-get upgrade -y

RUN apt-get install apt-transport-https ca-certificates -y

COPY deadsnakes.list /etc/apt/sources.list.d/

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
    curl \
    socat \
    postgresql-client \
    git

COPY bootstrap.sh /tmp/bootstrap.sh
RUN /tmp/bootstrap.sh

# Clean everything
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
