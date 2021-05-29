#!/bin/bash

# 并发垃圾收集器
GC_LOG_DIR=/var/logs/gc
app_name=app
JAVA_OPS="-server"
JAVA_OPS="${JAVA_OPT} -Xms512m -Xmx640m" #堆最小初始化大小 堆最大内存大小
JAVA_OPS="${JAVA_OPT} +UseConcMarkSweepGC" #使用并发垃圾收集器
JAVA_OPS="${JAVA_OPT} -XX:+UseAdaptiveSizePolicy  -XX:+PrintAdaptiveSizePolicy" #使用自适应大小调节策略。不需要分配堆中各区域大小，会动态分配。
JAVA_OPS="${JAVA_OPT} -verbose:gc -Xloggc:${GC_LOG_DIR}/${app_name}_gc_%p_%t.log -XX:+PrintGC -XX:+PrintGCDetails -XX:+DisableExplicitGC" #打印GC GC详情 禁用显示GC
JAVA_OPT="${JAVA_OPT} -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=5 -XX:GCLogFileSize=30m" # GCLog文件轮转 
JAVA_OPS="${JAVA_OPT} -XX:+HeapDumpOnOutOfMemoryError" # 出现java.lang.OutOfMemoryError 将Java堆转储到当文件
JAVA_OPT="${JAVA_OPT} -XX:-UseLargePages -XX:-UseBiasedLocking" #不使用大页内存、不实用偏向锁