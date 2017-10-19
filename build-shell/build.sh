#!/bin/bash

#mvn
cd platform-api
mvn clean package

cd ../platform-control-center/
mvn clean package