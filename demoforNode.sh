docker stop nodejstest
docker rm nodejstest
docker pull applestven/nodejstest:latest
docker run -it -d -p 8282:3000 --name nodejstest applestven/nodejstest:latest