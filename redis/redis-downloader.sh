#!/bin/bash
url=https://download.redis.io/releases/redis-6.0.9.tar.gz

sudo mkdir /opt/software /opt/module
cd /opt/software
wget url
tar -zxvf redis-6.0.9.tar.gz -C /opt/module
cd /opt/module/redis-6.0.9
make