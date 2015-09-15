#!/bin/bash
# 
# 运行具体的爬虫
# 

sudo docker exec -ti ibbd-scrapy \
    scrapy $*

