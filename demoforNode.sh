docker stop nodejstest
docker rm nodejstest
docker pull applestven/nodejstest:latest
# docker run -d -p 8282:3000 --name nodejstest applestven/nodejstest:latest sh -c "npm i && pm2 start /service/koa/src/main.js --no-daemon"
docker run -d -p 8282:3000 --name nodejstest applestven/nodejstest:latest