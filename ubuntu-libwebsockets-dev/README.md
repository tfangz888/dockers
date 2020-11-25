0.1:  
apt update -y  
apt install g++ -y  
apt install make -y  
apt install cmake -y  
apt install libssl-dev -y  
apt install libwebsockets-dev -y  

cmake .. -DLWS_WITH_MINIMAL_EXAMPLES=YES && make #编译mininal例子
