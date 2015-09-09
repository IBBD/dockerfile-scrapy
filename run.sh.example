#!/bin/bash
# 
# 运行：
# cp ./run.sh.example ./run.sh
# # cd到项目目录
# cd /path/to/project/
# # index.py是需要python执行的程序
# sudo /path/to/run.sh index.py
# 
# 注意：运行时会把当前目录映射成工作目录
# 

#-----------------------------------
# ----- 配置目录  BEGIN ------------
#-----------------------------------

# 代码目录
#code_path=/var/www

# 日志目录
#logs_path=/var/log/scrapy

#-----------------------------------
# ----- 配置目录  END --------------
#-----------------------------------


name=scrapy
if [ ! -f ./Dockerfile ]
then
    echo "ERROR: $PWD is error."
    exit 1
fi

#docker stop ibbd-$name 
#docker rm ibbd-$name 

docker run -it --rm --name ibbd-$name \
    -v "$PWD":/var/www \
    ibbd/scrapy \
    scrapy $*

docker ps

