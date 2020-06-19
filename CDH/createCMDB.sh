#!/bin/bash

pcount=$#
if((pcount==0)); then
echo "Usage: createCMDB.sh mysqlHost scmHost"
exit;
fi

mysql  -h $1 -uroot -p123456 <./cdh-db.sql;

# 创建cm库
# 遇到java.sql.SQLException: Access denied for user 'scm'@'localhost' (using password: YES) 问题。解决：删除cm数据库（drop database cm），scm用户(delete user where User='scm';)
sudo /opt/cm-5.16.2/share/cmf/schema/scm_prepare_database.sh mysql cm -h$1 -uroot -p123456 --scm-host $2 scm scm
