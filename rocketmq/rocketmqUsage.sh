# 参考 https://rocketmq.apache.org/docs/quick-start/
# Start Name Server
function startNameServer(){
    echo ----------start rocketmq name server----------
    nohup sh /opt/module/rocketmq-all-4.8.0-bin-release/bin/mqnamesrv &
}

# Start Broker
function startBroker(){
    echo ----------start rocketmq broker----------
    nohup sh /opt/module/rocketmq-all-4.8.0-bin-release/bin/mqbroker -c /opt/module/rocketmq-all-4.8.0-bin-release/conf/broker.conf -n 127.0.0.1:9876 &
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

# 查看集群情况
function clusterStatus(){
    /opt/module/rocketmq-all-4.8.0-bin-release/bin/mqadmin clusterList -n 127.0.0.1:9876
}

# 查看 broker 状态
function brokerStatus(){
    /opt/module/rocketmq-all-4.8.0-bin-release/bin/mqadmin brokerStatus -n 127.0.0.1:9876 -b 127.0.0.1:10911
}

# 查看 topic 列表
function topicList(){
    /opt/module/rocketmq-all-4.8.0-bin-release/bin/mqadmin topicList -n 127.0.0.1:9876
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
;;
"stop")
    shutdownBroker
    shutdownNameServer
;;
"clusterStatus")
    clusterStatus
;;
"brokerStatus")
    brokerStatus
;;
"topicList")
    topicList
;;
esac



