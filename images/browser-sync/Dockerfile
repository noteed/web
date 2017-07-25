FROM node:8-slim

RUN apt-get update
RUN apt-get install -q -y bzip2 inotify-tools pandoc

RUN npm -g install browser-sync
RUN npm -g install grunt-cli

ADD . /source
RUN mkdir /source/gathered
RUN mkdir /markdown

ADD gather.sh /
ADD run.sh /
ADD watch.sh /

WORKDIR /source
