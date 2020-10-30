#!/bin/bash
sudo mkdir /opt/modulecluster-test
cd /opt/modulecluster-test
mkdir 7000 7001 7002 7003 7004 7005
# 使用shell添加多行到文件的几个办法 https://www.jibing57.com/2017/12/12/how-to-write-multiline-to-file-by-shell/
echo -e 'port 7000\ncluster-enabled yes\ncluster-config-file nodes.conf\ncluster-node-timeout 5000\nappendonly yes' > redis.conf
cp redis.conf 7000
sudo sed -i "s/port 7000/port 7000/" ./7000/redis.conf
cp redis.conf 7001
sudo sed -i "s/port 7000/port 7001/" ./7001/redis.conf
cp redis.conf 7002
sudo sed -i "s/port 7000/port 7002/" ./7002/redis.conf
cp redis.conf 7003
sudo sed -i "s/port 7000/port 7003/" ./7003/redis.conf
cp redis.conf 7004
sudo sed -i "s/port 7000/port 7004/" ./7004/redis.conf
cp redis.conf 7005
sudo sed -i "s/port 7000/port 7005/" ./7005/redis.conf

