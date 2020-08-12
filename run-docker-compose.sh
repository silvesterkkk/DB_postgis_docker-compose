#!/bin/bash
# this is how you run docker compose

echo "first pull docker image for pgadmin4 if not done already"

docker pull dpage/pgadmin4:latest

echo "also pull docker image for postgis if not done already"

docker pull postgis/postgis:latest

echo "ready to create containers in detached mode"
echo "cd to dir where docker-compose is saved"

docker-compose up -d

echo "start pgadmin by typing 0.0.0.0:5555"
echo "5555 is host port number you specified during the stand up of the pgadmin container"

echo "to manage containers do following"

docker-compose stop
docker-copose start
docker-compose down
docker volume prune