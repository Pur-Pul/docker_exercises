#!/bin/sh
docker login --username=$DOCKER_USER --password=$DOCKER_PWD
docker build -t $2 https://github.com/$1.git#main
wait
docker push $2