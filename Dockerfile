# Docker with China source

FROM ubuntu:18.04

# replace the stock version with ours
ADD sources.list /etc/apt/

USER root

WORKDIR /home/app

# Install deps

RUN apt-get update

RUN apt-get -y install apt-utils
RUN apt-get -y install curl gnupg gcc g++ make
RUN apt-get -y install open-cobol

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get -y install nodejs


