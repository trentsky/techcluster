@echo off
D:
cd \bea\user_projects\domains\myClusterDomain
echo ����appServer2����.....
start "appServer2����" startManagedWeblogic "appServer2"
"http://192.168.15.100:7012"
echo �ȴ�appServer2����ɹ��󣬰����������......
pause>nul
echo ����appServer3����.....
start "appServer3����" startManagedWeblogic "appServer3"
"http://192.168.15.100:7013"
echo ���з���ִ����ϣ��밴������رմ���.
pause>nul
exit