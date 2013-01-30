@echo off
D:
cd \bea\user_projects\domains\myClusterDomain
echo 启动weblogic服务......
start "weblogic服务" startWeblogic.cmd
echo 等待Weblogic服务成功后，按任意键继续......
pause >nul
echo 启动appServer1服务......
start "appServer1服务" startManagedWeblogic "appServer1"
"http://80.24.16.130:7011"
echo 等待appServer1服务启动成功后，按任意键继续......
pause>nul
echo 所有服务执行完毕，请按任意键关闭窗口
pause>nul
exit