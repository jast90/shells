# GCP 安装CDH

## 机器准备

- mysql
- hadoop001
- hadoop002
- hadoop003

### 角色分布

- mysql:mysql
- server: hadoop001
- agent: hadoop001,hadoop002,hadoop003

### GCP SSH 免密登入配置

```shell
bash gcp/prepare.sh
```

## CDH 安装

### 安装包下载

#### hadoop00*机器

##### JDK 安装包下载

```shell
bash jdk/jdkDownloader.sh
```

##### mysql驱动下载

```shell
bash mysql/mysqlJavaConnectionDownloader.sh
```

##### CDH 安装包下载

```shell
bash CDH/cdhDownloader.sh
```

#### mysql机器

##### MySQL 安装包下载

```shell
bash mysql/mysqlDownloader.sh
```

### 安装

#### mysql机器 安装mysql

##### 卸除自带的mysql

```shell
rpm -qa|grep -i mysql
rpm -e --nodeps mysql***
```

##### 安装MySQL

```shell
bash mysql/mysqlInstall.sh
```

##### 更新root用户权限

```
source ./updateUser.sql
```


#### hadoop00*机器 安装JDK、CDH

##### 安装JDK

```shell
bash jdk/jdkInstall.sh
```

注意：

- jdk要安装在`/usr/java/`目录下



##### 安装CM

```shell
bash CDH/cmInstall.sh
```

注意：

- MySQL Java 驱动要复制到`/usr/share/java`且名称为`mysql-connector-java.jar`
- 创建 脚本`cm`数据库及用户时遇到`java.sql.SQLException: Access denied for user 'scm'@'localhost' (using password: YES)` 问题。解决：

```sql
use mysql;
select User,Host,Password from user;
show grants for scm;
grant all privileges on *.* to'scm'@'%' identified by 'scm' with grant option;
show grants for scm;
drop database cm;
flush privileges;
exit;
```

### hadoop00*上创建cloudera-scm用户

```shell
bash CDH/create-user.sh
```

### 创建CM数据库

在hadoop00*任一台上执行如下脚本

```shell
bash CDH/createCMDB.sh
```