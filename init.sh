#!/bin/bash
#
# 初始化 

create_dir() {
    [ ! -d $1 ] && sudo mkdir -p $1
}

cp_example() {
    [ ! -f $1 ] && cp $1".example" $1
}

# 初始化nginx的配置文件
cp_example run.sh
cp_example conf/nginx.conf
# cp_example conf/fastcgi.conf

# 创建相关目录
create_dir /var/log/nginx
create_dir /etc/nginx/sites-enabled/

echo '==> nginx init is ok!'

