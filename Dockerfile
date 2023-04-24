# FROM nginx
# COPY ./vite-Veu/dist /usr/share/nginx/html
# EXPOSE 80

FROM node:demoforNode
 
RUN mkdir -p /service
WORKDIR /service
COPY ./koa ./service
 
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install
RUN cnpm install pm2 -g
 
EXPOSE 3000
 
CMD [ "pm2-docker", "start", "pm2.json" ]