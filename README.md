# shells

一点一点写shell工具

## GCP SSH免密登入配置

```shell
bash gcp/prepare.sh
```

## CDH 安装

### 安装包下载

在hadoop001上下载

#### JDK

```shell
bash jdk/jdkDownloader.sh
```

#### MySQL

```shell
bash mysql/mysqlDownloader.sh
```

#### CDH

```shell
bash CDH/cdhDownloader.sh
```

### 安装

在hadoop001上安装

#### 安装JDK

```shell
bash jdk/jdkInstall.sh
```

注意：

- jdk要安装在`/usr/java/目录下

#### 安装MySQL

```shell
bash mysql/mysqlInstall.sh
```

注意：

- MySQL Java 驱动要复制到`/usr/share/java`且名称为`mysql-connector-java.jar`

#### 安装CM

```shell
bash CDH/cmInstall.sh
```

注意：

- 创建 脚本`cm`数据库及用户时遇到`java.sql.SQLException: Access denied for user 'scm'@'localhost' (using password: YES)` 问题。解决：删除cm数据库（drop database cm），scm用户(delete user where User='scm';)