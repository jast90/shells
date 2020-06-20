#!/bin/bash
host="https://repo.mysql.com/yum/mysql-5.6-community/el/6/x86_64/"
#bench="mysql-community-bench-5.6.48-2.el6.x86_64.rpm"
perlDbI="http://mirror.centos.org/centos/6/os/x86_64/Packages/perl-DBI-1.609-4.el6.x86_64.rpm"
rpmBundle="http://iso.mirrors.ustc.edu.cn/mysql-ftp/Downloads/MySQL-5.6/MySQL-5.6.48-1.el6.x86_64.rpm-bundle.tar"
numactl="http://mirror.centos.org/centos/6/os/x86_64/Packages/numactl-2.0.9-2.el6.x86_64.rpm"

sudo mkdir /opt/software
cd /opt/software
sudo mkdir mysql
cd /opt/software/mysql

sudo wget -b $perlDbI
sudo wget -b $rpmBundle
sudo wget -b $numactl