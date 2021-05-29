#!/bin/bash

# 并行垃圾收集器
JAVA_OPS="-server"
JAVA_OPS="${JAVA_OPT} -Xms512m -Xmx640m" #堆最小初始化大小 堆最大内存大小
JAVA_OPS="${JAVA_OPT} -XX:+UseParallelGC" #使用并行垃圾收集器
JAVA_OPS="${JAVA_OPT} -XX:MaxGCPauseMillis=500" #最大GC停顿时间
JAVA_OPS="${JAVA_OPT} -XX:+UseAdaptiveSizePolicy" #使用自适应大小调节策略，不需要分配堆中各区域大小会动态分配
JAVA_OPS="${JAVA_OPT} -XX:+PrintGC -XX:+PrintGCDetails -XX:+DisableExplicitGC" #打印GC GC详情 禁用显示GC
JAVA_OPS="${JAVA_OPT} -XX:+HeapDumpOnOutOfMemoryError" # 出现java.lang.OutOfMemoryError 将Java堆转储到当文件