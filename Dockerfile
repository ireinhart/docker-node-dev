FROM node
MAINTAINER Ingo Reinhart <ingo.reinhart@gmail.com>
WORKDIR /
ADD packages packages
RUN npm install -g $(cat packages) && rm -rf npm_cache && npm link gulp
CMD true
