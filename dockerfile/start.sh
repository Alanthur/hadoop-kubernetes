#!/bin/bash
source /etc/profile
if [[ $1 == "namenode" ]]; then
	nameNode="/mnt/disk1/hdfs"
        if [ "`ls -A $nameNode`" = "" ]; then
                hdfs namenode -format -force -nonInteractive
                echo "format all-----------------------------"
        fi
	hadoop-daemon.sh start namenode
fi
if [[ $1 == "datanode" ]]; then
	hadoop-daemon.sh start datanode
fi
if [[ $1 == "resourcemanager" ]]; then
	yarn-daemon.sh start resourcemanager
fi
if [[ $1 == "nodemanager" ]]; then
	yarn-daemon.sh start nodemanager
fi
