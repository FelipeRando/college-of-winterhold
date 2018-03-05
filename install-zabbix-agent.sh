rpm -ivh http://repo.zabbix.com/zabbix/3.0/rhel/7/x86_64/zabbix-release-3.0-1.el7.noarch.rpm
yum install zabbix-agent -y
echo -e "PidFile=/var/run/zabbix/zabbix_agentd.pid
LogFile=/var/log/zabbix/zabbix_agentd.log
LogFileSize=0
DebugLevel=3
Server=http://yourszabbix-server.com
ListenPort=10050
StartAgents=3
Hostname=$HOSTNAME" > /etc/zabbix/zabbix_agentd.conf
systemctl start zabbix-agent
