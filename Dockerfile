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
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 627220E7
RUN echo 'deb http://archive.scrapy.org/ubuntu scrapy main' | tee /etc/apt/sources.list.d/scrapy.list
RUN apt-get update
RUN apt-get install -y scrapy
RUN pip install scrapy-redis
RUN pip install torndb
RUN pip install pymongo

# 代码目录
RUN mkdir -p /var/www

# Define working directory.
WORKDIR /var/www

# 解决时区问题
ENV TZ "Asia/Shanghai"

# Define default command.
#CMD ["python2"]

# Expose ports.

