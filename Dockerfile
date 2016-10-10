FROM node:5.6.0
MAINTAINER Ingo Reinhart <ingo.reinhart@gmail.com>
WORKDIR /
ADD . /install
WORKDIR /install
RUN npm install -g $(cat packages) && rm -rf npm_cache /tmp/*
ENV NODE_PATH /usr/local/lib/node_modules/
CMD true
