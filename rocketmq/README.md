# rocket mq

## 常见问题解决方法

- 内存不足导致broker启动失败：`JAVA_OPT="${JAVA_OPT} -server -Xms8g -Xmx8g -Xmn4g"`
- broker ip地址取得内网IP地址导致程序访问不到rocket mq broker：通过`broker.conf`中的`brokerIP1`指定为外网IP地址

## 参考

- [架构](https://rocketmq.apache.org/docs/rmq-arc/)
- [部署 & broker.conf 配置](https://rocketmq.apache.org/docs/rmq-deployment/)
