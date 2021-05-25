#!/bin/bash

# 获取输入参数个数，没有参数，直接退出
function checkArgs(){
    pc=$#
    if((pc==0));then
    echo no args
    exit;
    fi
}

function start(){
    cd /opt/module/jenkins
    java -jar jenkins.war --httpPort=9090
}

# 打印初始化admin密码
function printInitialAdminPassword(){
    sudo cat /var/lib/jenkins/secrets/initialAdminPassword
}

checkArgs
$1

