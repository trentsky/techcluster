@echo off
D:
cd \bea\user_projects\domains\myClusterDomain
echo ����proxy��������......
start "proxy�������" startManagedWeblogic "proxyServer"
"http://192.168.15.100:7002"