#
# scrapy Dockerfile
#
# https://github.com/ibbd/dockerfile-scrapy
#
# sudo docker build -t ibbd/scrapy ./
#

# Pull base image.
FROM python:2.7

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# Define mountable directories.
#VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/var/log/nginx", "/var/www"]

# install scrapy
RUN pip install scrapy

# Define working directory.
WORKDIR /etc/nginx

# 解决时区问题
env TZ "Asia/Shanghai"

# Define default command.
# 加上这个会启动不了
#CMD ["nginx"]

# Expose ports.

