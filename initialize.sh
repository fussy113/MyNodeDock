#!/bin/bash

docker-compose build

docker-compose run --rm app yarn install

docker-compose up -d
