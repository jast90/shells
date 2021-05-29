#!/bin/bash
app="error-bash"

#后台启动bash：将输出打印到日志文件，生成pid文件（关键点 nohup &; 2>&1）
function start(){
    if [ -f "$app.pid" ];then
        echo "$app areadly start"
    else 
        echo "start $app"
        nohup sh error.sh > log.txt 2>&1 &
        printf '%d' $! > $app.pid
    fi
}

#根据pid停止进程
function stop(){
    echo "$app.pid"
    if [ -f "$app.pid" ];then
        kill - 9 `cat $app.pid`
        rm -rf $app.pid
        echo "$app stop success"
    else 
        echo "$app areadly stop"
    fi
}

$1