#!/bin/bash

#install tomcat
sudo su
mkdir /usr/local/tomcat
cd /usr/local/tomcat
wget http://apache.mirror.globo.tech/tomcat/tomcat-9/v9.0.1/bin/apache-tomcat-9.0.1.tar.gz
tar -xvf apache-tomcat-9.0.1.tar.gz
#change port 8080 to 80
sed -i 's/8080/80/' apache-tomcat-9.0.1/conf/server.xml
#startup
nohup ./apache-tomcat-9.0.1/bin/startup.sh