FROM       cine/base-image-docker

MAINTAINER Thomas Shafer <thomas@cine.io>

WORKDIR /usr/src
RUN git clone git@github.com:cine-io/cine.git
WORKDIR /usr/src/cine

RUN npm install --production

# start the censor
CMD ./node_modules/.bin/coffee run_contexts/rtmp_authenticator.coffee

# configuration
EXPOSE 80
