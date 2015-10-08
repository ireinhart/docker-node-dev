FROM node
MAINTAINER Ingo Reinhart <ingo.reinhart@gmail.com>
ADD packages packages
RUN npm install -g $(cat packages) && rm -rf npm_cache
CMD true
ENTRYPOINT
