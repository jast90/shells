#!/bin/bash

#后台启动bash：将输出打印到日志文件，生成pid文件（关键点 nohup &; 2>&1）
function start(){
    
    if(($#==2));then
        if [ -f "$1.pid" ];then
            echo "$1 areadly start"
        else 
            if [ -f $2 ];then 
                echo "start $1"
                nohup sh $2 > log.txt 2>&1 &
                printf '%d' $! > $1.pid
            else 
                echo "$2 not exit"
            fi
        fi
    else
        echo "usage: sh usage.sh start appname bashFileName"
    fi
}

#根据pid停止进程
function stop(){
    if(($#==1));then
        if [ -f "$1.pid" ];then
            kill - 9 `cat $1.pid`
            rm -rf $1.pid
            echo "$1 stop success"
        else 
            echo "$1 areadly stop"
        fi
    else
        echo "usage: sh usage.sh stop appname"
    fi
}

$1 $2 $3