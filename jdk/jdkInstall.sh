# 安装jdk 。注意：cdh，安装JDK必须安装到该目录下/usr/java目录下
mkdir /usr/java
sudo tar -zxvf /opt/software/jdk-8u212-linux-x64.tar.gz -C /usr/java
# 通过sed 将export JAVA_HOME=/usr/java/jdk1.8.0_212 追加到文件/etc/profile末尾
sudo sed -i '$ i export JAVA_HOME=/usr/java/jdk1.8.0_212' /etc/profile
# 通过sed 将export export PATH=$JAVA_HOME/bin:$PATH 追加到文件/etc/profile末尾
sudo sed -i '$ i export PATH=$JAVA_HOME/bin:$PATH' /etc/profile
source /etc/profile
