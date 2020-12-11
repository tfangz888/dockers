
docker login  

docker build -t tfangz/i386-q:0.1 /home/toby/dockers/i386-q/  

docker push tfangz/i386-q  

##########################################

docker container run -it --rm -v /tmp/q:/q -v /tmp:/tmp tfangz/i386-q:0.3 q

docker container run -it -v /tmp:/tmp tfangz/i386-q:0.1

docker container exec -it [containerID]   /bin/bash

cd; cp /tmp/q ./

docker ps -a  
docker commit -a "toby" -m "kdb3.2" [containerID] tfangz/kdb:0.1  

docker build -t tfangz/i386-q:0.2 /home/toby/dockers/i386-q/   
docker push tfangz/i386-q 

#######################################



