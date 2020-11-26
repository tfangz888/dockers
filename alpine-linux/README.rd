https://github.com/tfangz888/dockers/tree/main/alpine-linux

docker login 


docker run alpine echo '123'
docker build -t alpine-linux:0.1 /home/toby/dockers/alpine-linux/

docker push tfangz/alpine-linux
# docker tag local-image:tagname new-repo:tagname
docker tag alpine-linux:0.1 tfangz/alpine-linux:0.1
# docker push new-repo:tagname
docker push tfangz/alpine-linux:0.1

Dockfile 

# 基础镜像
FROM alpine:latest

# 维护者信息
MAINTAINER toby

# 镜像操作命令


# USER toby
WORKDIR /tmp
ENV HOSTNAME linux-host
# apk 安装程序时如果需要代理,要设置代理  
# ENV HTTP_PROXY proxy
# ENV HTTPS_PROXY proxy


# 容器启动命令
# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]



