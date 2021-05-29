#!/bin/bash
app="error-bash"

#后台启动bash：将输出打印到日志文件，生成pid文件（关键点 nohup &; 2>&1）
function start(){
    
    if [ -f "$app.pid" ];then
        echo "$app areadly start"
    else 
        if [ -f $1 ];then 
            echo "start $app"
            nohup sh $1 > log.txt 2>&1 &
            printf '%d' $! > $app.pid
        else 
            echo "$1 not exit"
        fi
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

$1 $2