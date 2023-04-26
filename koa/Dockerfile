# 基于最新版的NODE容器创建
FROM node:latest
RUN mkdir -p /service
COPY ./ /service
WORKDIR /service
RUN chmod 755 /service
RUN pwd
RUN ls
RUN npm install -g cnpm --registry=http://registry.npm.taobao.org
RUN cnpm install
RUN cnpm install pm2 -g
EXPOSE 3000
CMD [ "pm2", "start", "./main.js" ]
# 安装pm2的插件webshell，方便在容器外直接管理node和pm2
# RUN npm install -g pm2@latest
# RUN pm2 install pm2-webshell
# RUN pm2 conf pm2-webshell:username waterchestnut
# RUN pm2 conf pm2-webshell:password waterchestnut

# 映射nodejs可执行文件的目录
# 复制容器的执行脚本
# COPY start /start

# 容器的执行命令
# CMD ["/start"]

# 暴露端口映射

# EXPOSE 443

# FROM node:8.0.0

# RUN mkdir -p /service
# WORKDIR /service
# COPY ./koa ./service
 
# RUN npm config set registry https://registry.npmmirror.com/
# RUN npm install
# RUN npm install pm2 -g
 
# EXPOSE 3000
 
# CMD [ "pm2", "start", "./src/main.js" ] 