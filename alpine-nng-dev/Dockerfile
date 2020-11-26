# 基础镜像
FROM alpine:latest

# 维护者信息
MAINTAINER toby

# 镜像操作命令


# USER toby
WORKDIR /tmp
ENV HOSTNAME linux-host
# ENV HTTP_PROXY proxy
# ENV HTTPS_PROXY proxy
RUN apk update
RUN apk --no-cache add  \
        musl-dev  \
        g++  \
        make  \
        ninja  \
        cmake

# 容器启动命令
# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]


# docker run --env HTTP_PROXY==http://proxy --env HTTPS_PROXY=http://proxy [container] env |grep HTTP
