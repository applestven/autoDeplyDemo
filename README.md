## 一个测试demo

About
git push - gitAction - npm run build打包- docker login登录 -dockerhub build制作镜像 - docker run 运行镜像 - 完成自动化部署

## 在项目内部重新建一个项目vite-Vue  不以前端页面 根目录 是因为后面还需要集成后端项目 

## 完成部署集成  ，但好像不能持续   修改网页 push  未能成功更新网页 
测试地址 ： 
http://43.139.236.50:9000/




## 一些有价值的参考 ： 
https://cloud.tencent.com/developer/article/2200768   SCP发布到自有服务器上 直接上传到服务器 不走docker 

## 执行sh文件报错 docker 需要权限获取用户组权限  ： 

服务器中设置 ： 
查询当前用户 ： who 
第一步：sudo gpasswd -a ubuntu docker  #将普通用户username加入到docker组中，username这个字段也可以直接换成$USER。

第二步：newgrp docker  #更新docker组 

## 创建分支 demoforNode 

用来部署 后端 node   创建镜像到 打包 以及后端更新的cicd 