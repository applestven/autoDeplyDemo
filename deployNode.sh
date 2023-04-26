#!/bin/bash
echo "---------docker Login--------"
echo $2 | docker login --username $1 --password-stdin
echo "---------docker Stop--------"
docker stop nodejstest
echo "---------docker Rm--------"
docker rm nodejstest
echo "---------docker Pull--------"
docker pull applestven/nodejstest:latest
echo "---------docker Create and Start--------"
docker run -d -p 8282:3000 --name nodejstest applestven/nodejstest:latest
echo "---------deploy Success--------"
