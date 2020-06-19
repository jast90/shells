#!/bin/bash

connectorJava="https://mirrors.sohu.com/mysql/Connector-J/mysql-connector-java-5.1.48.zip"

sudo mkdir /opt/software
cd /opt/software
sudo mkdir mysql
cd /opt/software/mysql

sudo wget -b $connectorJava