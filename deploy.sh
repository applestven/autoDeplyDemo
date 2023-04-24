## 放在linux服务器上的文件   applestven是dockerHub用户名  $1是需要填的密码
docker ps
echo -e "---------docker Login--------"
docker login --username=$1  --password=$2 # 这个是yml文件最后一行所传递的参数，你docker的用户名和密码
echo -e "---------docker Stop--------"
docker stop vite-project
echo -e "---------docker Rm--------"
docker rm vite-project
docker rmi applestven/applestven:latest
echo -e "---------docker Pull--------"
docker pull applestven/vite-project:latest 
echo -e "---------docker Create and Start--------"
docker run --rm -d -p 9000:80 --name vite-project applestven/vite-project:latest
echo -e "---------deploy Success--------"

# echo -e "---------docker Login--------"
# docker login --username=$1  --password=$2 # 这个是yml文件最后一行所传递的参数，你docker的用户名和密码
# echo -e "---------docker Stop--------"
# docker stop <你镜像的别名(在下面 会生成)>  # 注意修改
# echo -e "---------docker Rm--------"
# docker rm <你容器名字> 									 # 注意修改
# docker rmi <你镜像的名字>									# 注意修改
# echo -e "---------docker Pull--------"
# docker pull <docker服务器上镜像的名字>:<镜像的tag默认是github分支的名字>  		 # 注意修改
# echo -e "---------docker Create and Start--------"
# docker run --rm -d -p 80:80 --name <容器的名字> <docker服务器上镜像的名字>:<镜像的tag默认是github分支的名字> # 注意修改
# echo -e "---------deploy Success--------" 