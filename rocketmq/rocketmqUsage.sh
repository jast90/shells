# 参考 https://rocketmq.apache.org/docs/quick-start/
# Start Name Server
function startNameServer(){
    echo ----------start rocketmq name server----------
    nohub sh /opt/module/rocketmq-all-4.8.0-bin-release/bin/mqnamesrc &
}

# Start Broker
function startBroker(){
    echo ----------start rocketmq broker----------
    nohub sh /opt/module/rocketmq-all-4.8.0-bin-release/bin/mqbroker &
}

# shutdown broker
function shutdownBroker(){
    echo ----------shutdown rocketmq broker----------
    sh /opt/module/rocketmq-all-4.8.0-bin-release/bin/mqshutdown broker
}

function shutdownNameServer(){
    echo ----------shutdown rocketmq name server----------
    sh /opt/module/rocketmq-all-4.8.0-bin-release/bin/mqshutdown namesrv
}

# 获取输入参数个数，没有参数，直接退出
pc=$#
if((pc==0));then
echo no args
exit;
fi

p1=$1
case "$p1" in
"start")
    startNameServer
    startBroker
done
;;
"stop")
    shutdownBroker
    shutdownNameServer
done
;;
esac



