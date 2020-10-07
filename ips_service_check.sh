#!/bin/bash
###Created by Georgy Dimitrov
###to monitor zookeeper and kafka
###services via zabbix.


if file /usr/lib/systemd/system/zookeeper.service 2>&1 > /dev/null; then
  if systemctl status zookeeper.service |grep running 2>&1 > /dev/null; then
     echo "--- zookeeperstatus: ZOOKEEPER IS RUNNING"
         else
         echo "--- checkzookeeper:  ZOOKEEPER IS DOWM!!!!!!!!"
  fi
else
     echo "--- noserviceinstaled: THERE IS NO ZOOKEEPER SERVISE CONFIGURED."
fi
if file /usr/lib/systemd/system/kafka.service 2>&1 > /dev/null; then
  if systemctl status kafka.service |grep running 2>&1 > /dev/null; then
     echo "--- kafkaservicestatus: KAFKA IS RUNNING"
         else
         echo "--- kafkaservicecheck: KAFKA IS DOWN!!!!!!!!"
  fi
else
     echo "--- noserviceinstaled: THERE IS NO KAFKA SERVISE CONFIGURED."

fi
