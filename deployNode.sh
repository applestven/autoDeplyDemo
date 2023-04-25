#!/bin/bash
# 定义变量
IMAGE_NAME="applestven/nodejstest"
TAG_NAME="latest"
# 停止并删除容器
docker stop nodejstest
docker rm nodejstest
# 删除旧镜像
docker rmi ${IMAGE_NAME}:${TAG_NAME}
# 从 Docker Hub 下载最新镜像
docker pull applestven/nodejstest:latest
# 创建并启动新容器
docker run -d -p 8282:3000 --name nodejstest ${IMAGE_NAME}:${TAG_NAME}