#!/bin/bash
###Created by Georgi Dimitrov

host=$1

###Create trusted keystore
echo "Create trusted store"
keytool -keystore server.truststore.jks  -alias CARoot -import  -file ${host}-ca.crt
###
openssl pkcs12 -export -in ${host}.crt -inkey ${host}.key -name ${host}.tst.srv > server.p12
###Create keystore
echo "Create keystore"
keytool -importkeystore -srckeystore server.p12 -destkeystore server.keystore.jks -srcstoretype pkcs12 -alias ${host}.tst.srv
