# shells

一点一点写shell工具

## GCP SSH免密登入配置

`bash gcp/prepare.sh`

## CDH 安装

### 安装包下载

在hadoop001上下载

#### JDK

`bash jdk/jdkDownloader.sh`

#### MySQL

`bash mysql/mysqlDownloader.sh`

#### CDH

`bash CDH/cdhDownloader.sh`

### 安装

在hadoop001上安装

#### 安装JDK

`bash jdk/jdkInstall.sh`

#### 安装MySQL

`bash mysql/mysqlInstall.sh`

#### 安装CM

`bash CDH/cmInstall.sh`
