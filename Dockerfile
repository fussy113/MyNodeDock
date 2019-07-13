ARG NODE_VERSION
ARG APPLICATION_PATH

FROM node:${NODE_VERSION}-alpine

WORKDIR /var/www

COPY src/package.json src/yarn.lock /var/www/

RUN yarn install
