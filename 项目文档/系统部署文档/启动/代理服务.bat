@echo off
D:
cd \bea\user_projects\domains\myClusterDomain
echo 启动proxy带来服务......
start "proxy代理服务" startManagedWeblogic "proxyServer"
"http://192.168.15.100:7002"