#!/bin/bash

name=scrapy

# 清除已有的
#docker stop ibbd-$name 
#docker rm ibbd-$name 
sudo docker rmi ibbd/$name 

# 重新生成
sudo docker build -t ibbd/$name ./

