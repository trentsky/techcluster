#!/bin/sh
#*******************************************************************
#script explanation: 停止weblogic应用，删除应用缓存，重启weblogic应用
#execute example: ./restartWebLogic.sh
#*******************************************************************
echo "**********************************网票weblogic服务重启 start******************************************"
                        echo "关闭 153 weblogic服务 开始"

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
						echo "关闭 153 weblogic服务 结束" 
fi
sleep 2s
						echo "清除 153 weblogic缓存 开始"
rm -rf /home/bea8/bea/user_projects/domains/wlkpdomain/adminServer/.wlnotdelete/extract
rm -rf /home/bea8/bea/user_projects/domains/wlkpdomain/app1/.wlnotdelete/extract
rm -rf /home/bea8/bea/user_projects/domains/wlkpdomain/app3/.wlnotdelete/extract
rm -rf /home/bea8/bea/user_projects/domains/wlkpdomain/app5/.wlnotdelete/extract
rm -rf /home/bea8/bea/user_projects/domains/wlkpdomain/clientdownload/.wlnotdelete/extract
						echo "清除 153 weblogic缓存 结束"
						echo "启动 153 weblogic服务 开始"
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
						echo "启动 153 weblogic服务 结束"
echo "**********************************网票weblogic服务重启 end******************************************"						
