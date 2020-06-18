#!/bin/bash

# 创建数据库

pcount=$#
if((pcount==0)); then
echo "Usage: cmInstall.sh mysqlHost scmHost"
exit;
fi

mysql -uroot -p123456 <./cdh-db.sql;

# 解压cloudera-manager到/opt
sudo tar -zxvf /opt/software/cm/cloudera-manager-el6-cm5.16.2_x86_64.tar.gz -C /opt

# 拷贝驱动到/usr/share/java
sudo unzip /opt/software/mysql/mysql-connector-java-5.1.48.zip -d /opt/software
sudo mkdir /usr/share/java
# 注意 /usr/share/java/mysql-connector-java.jar
sudo cp /opt/software/mysql-connector-java-5.1.48/mysql-connector-java-5.1.48-bin.jar /usr/share/java/mysql-connector-java.jar


# 创建cm库
# 遇到java.sql.SQLException: Access denied for user 'scm'@'localhost' (using password: YES) 问题。解决：删除cm数据库（drop database cm），scm用户(delete user where User='scm';)
sudo /opt/cm-5.16.2/share/cmf/schema/scm_prepare_database.sh mysql cm -h$1 -uroot -p123456 --scm-host $2 scm scm

# 修改agent config
# sed 中使用$1 $n变量
sudo sed -i "s/server_host=localhost/server_host=$2/" /opt/cm-5.16.2/etc/cloudera-scm-agent/config.ini

# 拷贝下载文件
sudo cp /opt/software/cm/CDH-5.16.2-1.cdh5.16.2.p0.8-el6.parcel /opt/cloudera/parcel-repo/
sudo cp /opt/software/cm/CDH-5.16.2-1.cdh5.16.2.p0.8-el6.parcel.sha1 /opt/cloudera/parcel-repo/CDH-5.16.2-1.cdh5.16.2.p0.8-el6.parcel.sha
sudo cp /opt/software/cm/manifest.json /opt/cloudera/parcel-repo/



