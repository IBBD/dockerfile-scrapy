#
# scrapy Dockerfile
#
# https://github.com/ibbd/dockerfile-scrapy
#
# sudo docker build -t ibbd/scrapy ./
#

# Pull base image.
FROM python:2

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# Define mountable directories.
#VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/var/log/nginx", "/var/www"]

# install scrapy
RUN pip install scrapy

# 代码目录
RUN mkdir -p /var/www

# Define working directory.
WORKDIR /var/www

# 解决时区问题
ENV TZ "Asia/Shanghai"

# Define default command.
#CMD ["python2"]

# Expose ports.

