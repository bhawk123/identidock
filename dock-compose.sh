#!/bin/bash

# COMPOSE STUFF
docker-compose stop
docker-compose rm --force -v
docker-compose build --no-cache
docker-compose up -d
