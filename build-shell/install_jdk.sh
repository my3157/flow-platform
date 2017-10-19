#!/bin/bash

sudo su #切换到root权限
mkdir /usr/local/java
cd /usr/local/java

#download jdk 1.8.0_131
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u152-b16/aa0333dd3019491ca4f6ddbe78cdb6d0/jdk-8u152-linux-x64.tar.gz

#extract jdk
tar -xvf jdk-8u152-linux-x64.tar.gz

#set environment
export JAVA_HOME="/usr/local/java/jdk1.8*"
if ! grep "JAVA_HOME=/usr/local/java/jdk1.8*" /etc/environment
then
    echo "JAVA_HOME=/usr/local/java/jdk1.8*" | sudo tee -a /etc/environment
    echo "export JAVA_HOME" | sudo tee -a /etc/environment
    echo "PATH=$PATH:$JAVA_HOME/bin" | sudo tee -a /etc/environment
    echo "export PATH" | sudo tee -a /etc/environment
    echo "CLASSPATH=.:$JAVA_HOME/lib" | sudo tee -a /etc/environment
    echo "export CLASSPATH" | sudo tee -a /etc/environment
fi

#update environment
source /etc/environment
ehco "jdk is installed !"