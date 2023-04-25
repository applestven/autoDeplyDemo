# FROM nginx
# COPY ./vite-Veu/dist /usr/share/nginx/html
# EXPOSE 80

FROM node:8.0.0

RUN mkdir -p /service
WORKDIR /service
COPY ./koa ./service
 
RUN npm config set registry https://registry.npmmirror.com/
RUN npm install
RUN npm install pm2 -g
 
EXPOSE 3000
 
CMD [ "pm2", "start", "./src/main.js" ] 