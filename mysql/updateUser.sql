# cat /root/.mysql_secret

# 修改密码
set password=password('123456');

# 修改mysql.user表
use mysql;

update user set host='%' where host='localhost';

select user,host,password from user;
delete from user where host in('127.0.0.1','::1',"hadoop001");


flush privileges;

