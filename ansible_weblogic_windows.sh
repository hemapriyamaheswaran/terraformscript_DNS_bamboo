weblogic_windows_node_ip=$(cat /home/centos/workspace/bamboo/webwindows/weblogic_windows_node_ip)
Rweblogic_windows_node_ip=$(cat /home/centos/workspace/bamboo/webwindows/weblogic_windows_node_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'anible_weblogic_whostname1=$(cat /var/named/forward.zone | grep bambooansiblewindowsweblogic.zippyops.com)' > /home/BAweblogic.sh
echo 'anible_weblogic_whostname2=$(cat /var/named/reverse.zone | grep bambooansiblewindowsweblogic.zippyops.com)' >> /home/BAweblogic.sh
echo 'sed -i "/$anible_weblogic_whostname1/d" /var/named/forward.zone' >> /home/BAweblogic.sh
echo 'sed -i "/$anible_weblogic_whostname2/d" /var/named/reverse.zone' >> /home/BAweblogic.sh
echo Ansible_weblogic_windows=$weblogic_windows_node_ip >> /home/BAweblogic.sh
echo RAnsible_weblogic_windows=$Rweblogic_windows_node_ip >> /home/BAweblogic.sh
echo 'ansible_weblogic_whostname3=$(cat /var/named/forward.zone | grep $Ansible_weblogic_windows)' >> /home/BAweblogic.sh
echo 'ansible_weblogic_whostname4=$(cat /var/named/reverse.zone | grep $RAnsible_weblogic_windows)' >> /home/BAweblogic.sh
echo 'sed -i "/$ansible_weblogic_whostname3/d" /var/named/forward.zone' >> /home/BAweblogic.sh
echo 'sed -i "/$ansible_weblogic_whostname4/d" /var/named/reverse.zone' >> /home/BAweblogic.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BAweblogic.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BAweblogic.sh
echo "echo bambooansiblewindowsweblogic.zippyops.com. IN A $weblogic_windows_node_ip >> /var/named/forward.zone" >> /home/BAweblogic.sh
echo "echo $Rweblogic_windows_node_ip.in-addr.arpa. IN PTR bambooansiblewindowsweblogic.zippyops.com. >> /var/named/reverse.zone" >> /home/BAweblogic.sh
echo "service named restart" >> /home/BAweblogic.sh
echo "rm -rf /home/BAweblogic.sh" >> /home/BAweblogic.sh
chmod 755 /home/BAweblogic.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BAweblogic.sh root@192.168.1.5:/home/BAweblogic.sh
rm -rf /home/centos/workspace/bamboo/webwindows/weblogic_windows_node_ip
