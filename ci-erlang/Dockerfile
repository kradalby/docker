FROM debian:latest
MAINTAINER Kristoffer Dalby <kradalby@kradalby.no>

# Update system libraries
RUN apt-get update && apt-get upgrade -y

# Install all build requirements
RUN apt-get install -y build-essential wget

# VCS
RUN apt-get install -y git

# Install Erlang repositories
RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
RUN dpkg -i erlang-solutions_1.0_all.deb

# Update and install Erlang
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y erlang
RUN apt-get dist-upgrade -y

# Install rebar3
RUN wget https://s3.amazonaws.com/rebar3/rebar3 -O /usr/local/bin/rebar3
RUN chmod +x /usr/local/bin/rebar3

# Clean everything
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
