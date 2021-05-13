#!/bin/bash
mkdir /opt/module
tar -zxf /opt/software/apache-zookeeper-3.7.0-bin.tar.gz -C /opt/module/
cp /opt/module/apache-zookeeper-3.7.0-bin/conf/zoo_sample.cfg /opt/module/apache-zookeeper-3.7.0-bin/conf/zoo.cfg
sudo sed -i "s/dataDir=/tmp/zookeeper/dataDir=/opt/data/zkData" /opt/module/apache-zookeeper-3.7.0-bin/conf/zoo.cfg

