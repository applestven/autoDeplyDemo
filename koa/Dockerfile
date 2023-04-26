FROM node:latest
# 输出当前文件夹列表
RUN pwd && ls -la
# 添加守护进程管理工具
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     curl \
#     && curl -o /usr/local/bin/dumb-init -SL "https://github.com/Yelp/dumb-init/releases/download/v1.2.2/dumb-init_1.2.2_amd64" \
#     && chmod +x /usr/local/bin/dumb-init \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/*

# 创建工作目录
RUN mkdir -p /service
WORKDIR /service

# 复制应用程序
ADD ./ /service

# 修改权限
RUN chmod 755 /service
WORKDIR /service
# 安装依赖
RUN npm install -g cnpm --registry=http://registry.npm.taobao.org
RUN cnpm install
RUN cnpm install pm2 -g
RUN pm2 start ./koa/src/main.js

# 暴露端口
EXPOSE 3000

# 使用守护进程管理工具启动应用程序
# ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
# CMD ["pm2", "start", "./koa/src/main.js"]

# 添加了守护进程管理工具 dumb-init，用于在容器内处理 Unix 信号和进程优雅退出。

# 在 CMD 中使用了 pm2-runtime 命令，它包含了守护进程管理的功能，也可以输出日志；启动时，可以监听容器收到的 SIGINT 和 SIGTERM 信号，并退出守护进程及其管理的进程。

# 使用 ENTRYPOINT，而不是 CMD，指定 dumb-init 为容器的默认入口程序，这样可以在 CMD 中直接指定命令行参数，而不需要手动添加 dumb-init --。

# 添加了 curl 的安装命令，这是因为在 dumb-init 的 GitHub Releases 页面上下载安装包时需要使用 curl 命令。



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