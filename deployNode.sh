#!/bin/bash

echo "---------docker Login--------"
docker login --username=$1 --password=$2
echo "---------docker Stop--------"
docker stop nodejstest
echo "---------docker Rm--------"
docker rm nodejstest
docker rmi applestven/nodejstest:latest
echo "---------docker Pull--------"
docker pull applestven/nodejstest:latest
echo "---------docker Create and Start--------"
docker run -d -p 8282:80 --name nodejstest applestven/nodejstest:latest
echo "---------deploy Success--------"
