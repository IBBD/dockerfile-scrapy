# Scrapy For IBBD

## 基础说明

- 基础镜像: python:2.7-slim
- Scrapy：`pip install scrapy`

## 插件列表

- scrapy-redis
- torndb
- pymongo

## 使用

### STEP 1: 下载镜像

有两种方式：

```
# 第一种方式
sudo docker pull ibbd/scrapy 

# 第二种方式
# 通过docker load安装
```

### STEP 2: 启动容器

```sh 
./run.sh
```

### STEP 3: 执行爬虫

```sh 
./exec.sh 参数列表
```

