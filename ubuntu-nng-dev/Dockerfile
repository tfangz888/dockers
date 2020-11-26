# 基础镜像
FROM ubuntu:latest

# 维护者信息
MAINTAINER toby

# 镜像操作命令


# USER toby
WORKDIR /tmp
ENV HOSTNAME linux-host
# ENV HTTP_PROXY proxy
# ENV HTTPS_PROXY proxy
# COPY 95proxies /etc/apt/apt.conf.d/  # 需要配置proxy
RUN apt-get update && apt-get install -y \
        g++  \
        make  \
        cmake  \
        && rm -rf /var/lib/apt/lists/*

# 需要手工安装ninja并解压, 只适用于ubuntu. 而在 alpine中可直接安装ninja
# wget https://github.com/ninja-build/ninja/releases/download/v1.10.1/ninja-linux.zip

# 容器启动命令
# CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

