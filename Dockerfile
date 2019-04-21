ARG NODE_VERSION

FROM node:${NODE_VERSION}-alpine as builder
ARG APPLICATION_PATH
COPY $APPLICATION_PATH/ /var/www/

WORKDIR /var/www

# node_modulesの軽量化
RUN  apk add --no-cache curl git && cd /tmp && \
    curl -#L https://github.com/tj/node-prune/releases/download/v1.0.1/node-prune_1.0.1_linux_amd64.tar.gz | tar -xvzf- && \
    mv -v node-prune /usr/local/bin && rm -rvf * && \
    echo "yarn cache clean && node-prune" > /usr/local/bin/node-clean && chmod +x /usr/local/bin/node-clean

RUN yarn --frozen-lockfile --non-interactive && node-clean

RUN yarn install
RUN yarn build

FROM node:${NODE_VERSION}-alpine

WORKDIR /var/www

COPY --from=builder /var/www/package.json ./
COPY --from=builder /var/www/nuxt.config.js ./
COPY --from=builder /var/www/node_modules ./node_modules/
COPY --from=builder /var/www/.nuxt ./.nuxt/
COPY --from=builder /var/www/static ./static/