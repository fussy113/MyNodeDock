# nuxt.js with storybook

## Usage

* Please Install Docker and Docker-compose

```
git clone -b NuxtWithStoryBook https://github.com/fussy113/MyNodeDock.git

cd MyNodeDock

cp .env.example .env

docker-compose build

docker-compose run --rm node yarn install

docker-compose up -d
```