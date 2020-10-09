#!/bin/bash
###Created by Georgy Dimitrov
###to monitor zookeeper 
###service via zabbix.

systemctl status zookeeper.service|egrep 'Active: active' > /dev/null

echo $?



