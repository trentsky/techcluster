@echo off
D:
cd \bea\user_projects\domains\myClusterDomain
echo ����weblogic����......
start "weblogic����" startWeblogic.cmd
echo �ȴ�Weblogic����ɹ��󣬰����������......
pause >nul
echo ����appServer1����......
start "appServer1����" startManagedWeblogic "appServer1"
"http://80.24.16.130:7011"
echo �ȴ�appServer1���������ɹ��󣬰����������......
pause>nul
echo ���з���ִ����ϣ��밴������رմ���
pause>nul
exit