# MyNodeDock ~ Vue ~

## requirement

* Docker
* docker-compose

## usage

* Please Install **docker** command and **docker-compose** command

In your terminal,
```
git clone -b Vue https://github.com/fussy113/MyNodeDock.git

cd MyNodeDock

cp .env.example .env

docker-compose build

docker-compose run --rm workspace yarn install

docker-compose up
```

* Please Connect http://localhost:3000
