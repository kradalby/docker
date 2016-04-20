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

# Add jessie backports
RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list

# Add Mono repo
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" > /etc/apt/sources.list.d/mono-xamarin.list
RUN echo "deb http://download.mono-project.com/repo/debian wheezy-libjpeg62-compat main" >> /etc/apt/sources.list.d/mono-xamarin.list
RUN echo "deb http://download.mono-project.com/repo/debian wheezy-libtiff-compat main" >> /etc/apt/sources.list.d/mono-xamarin.list

# Update and install node
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nodejs -y

# Install wine
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get -t jessie-backports install wine32 -y

# Install electron-build deps
RUN apt-get install ruby ruby-dev gcc make icnsutils graphicsmagick xz-utils -y
RUN apt-get install gcc-multilib g++-multilib -y
RUN apt-get install mono-complete -y
RUN gem install fpm

# Clean everything
RUN apt-get dist-upgrade -y
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
