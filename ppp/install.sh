#!/bin/bash
apt-get install ppp pppoe
cp quectel-chat-connect quectel-chat-disconnect quectel-ppp /etc/ppp/peers/
cp pppd-script  /usr/bin/
mkdir /usr/lib/systemd/system/
cp pppd.service /usr/lib/systemd/system/
systemctl  enable pppd.service

