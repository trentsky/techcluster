#!/bin/sh
#*******************************************************************
#script explanation: ֹͣweblogicӦ�ã�ɾ��Ӧ�û��棬����weblogicӦ��
#execute example: ./restartWebLogic.sh
#*******************************************************************
echo "**********************************��Ʊweblogic�������� start******************************************"
                        echo "�ر� 153 weblogic���� ��ʼ"

cd /home/bea8/bea/user_projects/domains/wlkpdomain 
i=0 
for x in `ps -ef | grep java |awk '{print $2}'` 
do 
kill -9 "$x" 
let "i++" 
done 
if [ $i -eq 0 ]; then 
echo "No Running WebLogic Instance Found!" 
else
						echo "�ر� 153 weblogic���� ����" 
fi
sleep 2s
						echo "��� 153 weblogic���� ��ʼ"
rm -rf /home/bea8/bea/user_projects/domains/wlkpdomain/adminServer/.wlnotdelete/extract
rm -rf /home/bea8/bea/user_projects/domains/wlkpdomain/app1/.wlnotdelete/extract
rm -rf /home/bea8/bea/user_projects/domains/wlkpdomain/app3/.wlnotdelete/extract
rm -rf /home/bea8/bea/user_projects/domains/wlkpdomain/app5/.wlnotdelete/extract
rm -rf /home/bea8/bea/user_projects/domains/wlkpdomain/clientdownload/.wlnotdelete/extract
						echo "��� 153 weblogic���� ����"
						echo "���� 153 weblogic���� ��ʼ"
cd /home/bea8/bea/user_projects/domains/wlkpdomain
						echo "start adminserver"
nohup sh startadmin.sh > wlkplogs/serverlogs/adminserver.log &
sleep 10s
						echo "start appserver1"
nohup sh startapp1.sh > wlkplogs/serverlogs/app1.log &
                                                echo "start appserver3"
sleep 1s
nohup sh startapp3.sh > wlkplogs/serverlogs/app3.log &
			                        echo "start appserver5"
sleep 1s
nohup sh startapp5.sh > wlkplogs/serverlogs/app5.log &
						echo "start clientupdown"
sleep 1s
nohup sh startclient.sh > wlkplogs/serverlogs/startclient.log &
						echo "���� 153 weblogic���� ����"
echo "**********************************��Ʊweblogic�������� end******************************************"						
