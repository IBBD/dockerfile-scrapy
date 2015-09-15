#!/bin/bash

# 下载（更新）必要的组件
# 在build之前执行，定时更新即可

if [ ! -d ext ]
then
    mkdir ext 
fi

cd ext

# sources.list
rm sources.list
wget https://raw.githubusercontent.com/IBBD/docker-compose/master/sources.list/debian/sources.list -O sources.list

echo "===> Finish!"

