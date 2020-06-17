#!/bin/bash

jdkURL="https://github.com/frekele/oracle-java/releases/download/8u212-b10/jdk-8u212-linux-x64.tar.gz"
sudo mkdir /opt/software
cd /opt/software
sudo wget -b $jdkURL