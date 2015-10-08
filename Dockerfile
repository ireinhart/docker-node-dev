FROM node
MAINTAINER Ingo Reinhart <ingo.reinhart@gmail.com>
WORKDIR /
ADD packages packages
RUN npm install -g $(cat packages) && rm -rf npm_cache
ENV NODE_PATH /usr/local/lib/node_modules/
CMD true
