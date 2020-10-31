#!/bin/bash
url=https://codeload.github.com/redis/redis/tar.gz/6.0.9

sudo mkdir /opt/software /opt/module
cd /opt/software
wget $url
tar -zxvf redis-6.0.9.tar.gz -C /opt/module
cd /opt/module/redis-6.0.9
make