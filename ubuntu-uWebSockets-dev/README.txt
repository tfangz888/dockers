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
