# 编译 websocket项目
cd /tmp/libwebsockets  
mkdir build; cd build  
cmake .. -DLWS_WITH_MINIMAL_EXAMPLES=YES && make  # 会编译minimal的例子

