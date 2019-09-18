ARG NODE_VERSION

FROM node:${NODE_VERSION}-alpine

RUN yarn global add create-nuxt-app