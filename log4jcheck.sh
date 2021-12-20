#!/bin/bash
ps -ef | grep -v grep | grep java > log
if [ $? -eq 0 ];then
  IP=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
  echo $IP
  exit 0
else
 exit 1
fi
