docker pull zenika/alpine-chrome:with-puppeteer  

docker container run -it --rm --env HTTP_PROXY=ip:port --env HTTPS_PROXY=ip:port -v /tmp/src:/usr/src/app/src --cap-add=SYS_ADMIN zenika/alpine-chrome:with-puppeteer node src/screenshot-asia.js  

 apk add wqy-zenhei # 如果不支持中文, 安装中文字体
