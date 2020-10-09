#!/bin/bash
###Created by Georgy Dimitrov
###to monitor kafka 
###service via zabbix.

systemctl status kafka.service|egrep 'Active: active' > /dev/null

echo $?



