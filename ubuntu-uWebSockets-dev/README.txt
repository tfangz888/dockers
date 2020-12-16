sudo apt-get update
sudo apt-get install git libuv1-dev libssl-dev gcc g++ cmake make
git clone https://github.com/uWebSockets/uWebSockets 
cd uWebSockets
git checkout e94b6e1
mkdir build
cd build
cmake ..
make 
sudo make install
cd ../..
sudo ln -s /usr/lib64/libuWS.so /usr/lib/libuWS.so
sudo rm -r uWebSockets


如果基础库使用uSockets,第一步下载下来的uSockets目录是空的,需要单独下载,是另外一个git仓库. 也可以使用libuv库
最新的uWebSockets使用的是c++17,这个版本有点高，可以切换到c++11标准的分支v0.14, git checkout v0.14
需要注意的地方,可能会编译出错，openssl的版本需要匹配1.1.1

#####################################################################################################
最新版不支持cmake, 用以下命令编译例子
docker pull teeks99/clang-ubuntu:latest
docker container run -it -v /tmp:/tmp --rm teeks99/clang-ubuntu /bin/bash
apt-get update -y
apt-get install libuv1-dev libssl-dev libz-dev
git clone https://github.com/uWebSockets/uWebSockets 
cd uWebSockets
git clone https://github.com/uNetworking/uSockets.git
WITH_LIBUV=1 WITH_OPENSSL=1 CC=/usr/bin/clang-11 CXX=/usr/bin/clang++-11 make examples # 使用openssl
WITH_LIBUV=1 CC=/usr/bin/clang-11 CXX=/usr/bin/clang++-11 make examples # 使用WolfSSL

PerSocketData的用法
https://github.com/uNetworking/uWebSockets/blob/master/misc/main.cpp

