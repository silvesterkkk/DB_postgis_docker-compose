#!/bin/bash

echo "pull docker image for pgadmin4"

docker pull dpage/pgadmin4:latest

echo "pull docker image for postgis"

docker pull postgis/postgis:latest

echo "create containers in detached mode"

docker-compose up -d

echo "start pgadmin by typing 0.0.0.0:5555"

echo "to manage containers do following"

docker-compose stop
docker-copose start
docker-compose down
docker volume prune