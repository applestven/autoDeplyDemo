## 放在linux服务器上的文件   applestven是dockerHub用户名  $1是需要填的密码
docker ps
echo -e "---------docker Login--------"
docker login --username=$1  --password=$2 # 这个是yml文件最后一行所传递的参数，你docker的用户名和密码
echo -e "---------docker Stop--------"
docker stop nodejstest
echo -e "---------docker Rm--------"
docker rm nodejstest
docker rmi applestven/applestven:latest
echo -e "---------docker Pull--------"
docker pull applestven/nodejstest:latest 
echo -e "---------docker Create and Start--------"
docker run --rm -d -p 8282:80 --name nodejstest applestven/nodejstest:latest
echo -e "---------deploy Success--------"







#!/bin/bash
# 定义变量
# IMAGE_NAME="applestven/nodejstest"
# TAG_NAME="latest"
# # 停止并删除容器
# docker stop nodejstest
# docker rm nodejstest
# # 删除旧镜像
# docker rmi ${IMAGE_NAME}:${TAG_NAME}
# # 从 Docker Hub 下载最新镜像
# docker pull ${IMAGE_NAME}:${TAG_NAME}
# # 创建并启动新容器
# docker run -it -p 8282:3000 --name  nodejstest  applestven/nodejstest:latest