#!/bin/bash
 quectel-chat-connect quectel-chat-disconnect quectel-ppp  配置脚本
 pppd-script  启动脚本
 pppd.service 系统服务
 install.sh 是安装以上配置文件。
 apt-get install ppp pppoe
 

 使用ec20的4G模块  ： quectel-ppp 文件中 默认配置是：/dev/ttyUSB3
 使用ec200S es200T 模块 ：.需要配置quectel-ppp 文件中  /dev/ttyUSB3 改成/dev/ttyUSB1  

 移动物联网卡：
 1. 配置 quectel-ppp  将 user "test" password "test"改为user "user" password "passwd"
 2.配置 quectel-chat-connect  将OK AT+CGDCONT=1,"IP","3gnet",,0,0改成 OK AT+CGDCONT=1,"IP","cmiot",,0,0 

 联通物联网卡：
 1. 配置 quectel-ppp  将 user "test" password "test"改为user "user" password "passwd"
 2. 配置 quectel-chat-connect  将OK AT+CGDCONT=1,"IP","3gnet",,0,0改成 OK AT+CGDCONT=1,"IP","unim2m.gzm2mapn",,0,0 

 电信物联网卡：
 1. 配置 quectel-ppp  将 user "test" password "test"改为user "m2m" password "vnet.mobi"
 2. 配置quectel-chat-connect  将OK AT+CGDCONT=1,"IP","3gnet",,0,0改成 OK AT+CGDCONT=1,"IP","CTNET",,0,0 
