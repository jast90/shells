#!/bin/bash

cd /opt/software/mysql/

# 解压tar包
sudo tar -xvf /opt/software/mysql/MySQL-5.6.48-1.el6.x86_64.rpm-bundle.tar -C .

# 解压java 驱动
sudo unzip /opt/software/mysql/mysql-connector-java-5.1.48.zip

# 卸除自带的mysql
rpm -qa|grep -i mysql

# 安装mysql
sudo rpm -ivh numactl**.rpm
sudo rpm -ivh MySQL-server**.rpm

# 安装mysql client
sudo rpm -ivh MySQL-client**.rpm

# 启动mysql
sudo service mysql start

# 修改mysqlm密码及权限

# sudo awk -F": " '{print $2}' /root/.mysql_secret|xargs mysqladmin -uroot -p{} password "123456"