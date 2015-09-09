#!/bin/bash
# 
# 运行：
# cp ./run.sh.example ./run.sh
# sudo ./run.sh
# 

#-----------------------------------
# ----- 配置目录  BEGIN ------------
#-----------------------------------

# 代码目录
code_path=/var/www

# 日志目录
logs_path=/var/log/scrypt

#-----------------------------------
# ----- 配置目录  END --------------
#-----------------------------------


name=scrypt
current_path=$(pwd)
if [ ! -f ./Dockerfile ]
then
    echo "ERROR: $current_path is error."
    exit 1
fi

docker stop ibbd-$name 
docker rm ibbd-$name 

# 注意：这里需要 volumes-from ,否则出错, 因为nginx需要用到相应的路径
docker run --name=ibbd-$name -d \
    -v $code_path:/var/www \
    -v $logs_path:/var/log/nginx \
    ibbd/$name 

docker ps

