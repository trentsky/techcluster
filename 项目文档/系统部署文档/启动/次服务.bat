@echo off
D:
cd \bea\user_projects\domains\myClusterDomain
echo 启动appServer2服务.....
start "appServer2服务" startManagedWeblogic "appServer2"
"http://192.168.15.100:7012"
echo 等待appServer2服务成功后，按任意键继续......
pause>nul
echo 启动appServer3服务.....
start "appServer3服务" startManagedWeblogic "appServer3"
"http://192.168.15.100:7013"
echo 所有服务执行完毕，请按任意键关闭窗口.
pause>nul
exit