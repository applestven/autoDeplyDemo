#!/bin/bash
echo "---------docker Login--------"
echo $2 | docker login --username $1 --password-stdin
echo "---------docker Stop--------"
docker stop demofor-node
echo "---------docker Rm--------"
docker rm demofor-node
echo "---------docker Pull--------"
docker pull applestven/demofor-node:latest
echo "---------docker Create and Start--------"
docker run -d -p 8282:3000 --name demofor-node applestven/demofor-node:latest
echo "---------deploy Success--------"
