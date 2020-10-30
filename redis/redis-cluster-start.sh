#!/bin/bash
cd /opt/modulecluster-test

# 日志会打印在控制台，并且可能无法启动后面的命令，TODO 待解决
cd 7000
../redis-6.0.9/src/redis-server ./redis.conf

cd 7001
../redis-6.0.9/src/redis-server ./redis.conf

cd 7002
../redis-6.0.9/src/redis-server ./redis.conf

cd 7003
../redis-6.0.9/src/redis-server ./redis.conf

cd 7004
../redis-6.0.9/src/redis-server ./redis.conf

cd 7005
../redis-6.0.9/src/redis-server ./redis.conf