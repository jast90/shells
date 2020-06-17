# 安装jdk
sudo tar -zxvf /opt/software/jdk-8u212-linux-x64.tar.gz -C /opt
# 通过sed 将export JAVA_HOME=/opt/jdk1.8.0_212 追加到文件/etc/profile末尾
sudo sed -i '$ i export JAVA_HOME=/opt/jdk1.8.0_212' /etc/profile
# 通过sed 将export export PATH=$JAVA_HOME/bin:$PATH 追加到文件/etc/profile末尾
sudo sed -i '$ i export PATH=$JAVA_HOME/bin:$PATH' /etc/profile
source /etc/profile
