weblogic_centos_node_ip=$(cat /home/centos/workspace/bamboo/webcentos/weblogic_centos_node_ip)
Rweblogic_centos_node_ip=$(cat /home/centos/workspace/bamboo/webcentos/weblogic_centos_node_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'anible_weblogic_chostname1=$(cat /var/named/forward.zone | grep bambooansiblecentosweblogic.zippyops.com)' > /home/BAcenweblogic.sh
echo 'anible_weblogic_chostname2=$(cat /var/named/reverse.zone | grep bambooansiblecentosweblogic.zippyops.com)' >> /home/BAcenweblogic.sh
echo 'sed -i "/$anible_weblogic_chostname1/d" /var/named/forward.zone' >> /home/BAcenweblogic.sh
echo 'sed -i "/$anible_weblogic_chostname2/d" /var/named/reverse.zone' >> /home/BAcenweblogic.sh
echo Ansible_weblogic_centos=$weblogic_centos_node_ip >> /home/BAcenweblogic.sh
echo RAnsible_weblogic_centos=$Rweblogic_centos_node_ip >> /home/BAcenweblogic.sh
echo 'ansible_weblogic_chostname3=$(cat /var/named/forward.zone | grep $Ansible_weblogic_centos)' >> /home/BAcenweblogic.sh
echo 'ansible_weblogic_chostname4=$(cat /var/named/reverse.zone | grep $RAnsible_weblogic_centos)' >> /home/BAcenweblogic.sh
echo 'sed -i "/$ansible_weblogic_chostname3/d" /var/named/forward.zone' >> /home/BAcenweblogic.sh
echo 'sed -i "/$ansible_weblogic_chostname4/d" /var/named/reverse.zone' >> /home/BAcenweblogic.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BAcenweblogic.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BAcenweblogic.sh
echo "echo bambooansiblecentosweblogic.zippyops.com. IN A $weblogic_centos_node_ip >> /var/named/forward.zone" >> /home/BAcenweblogic.sh
echo "echo $Rweblogic_centos_node_ip.in-addr.arpa. IN PTR bambooansiblecentosweblogic.zippyops.com. >> /var/named/reverse.zone" >> /home/BAcenweblogic.sh
echo "service named restart" >> /home/BAcenweblogic.sh
echo "rm -rf /home/BAcenweblogic.sh" >> /home/BAcenweblogic.sh
chmod 755 /home/BAcenweblogic.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BAcenweblogic.sh root@192.168.1.5:/home/BAcenweblogic.sh
rm -rf /home/centos/workspace/bamboo/webcentos/weblogic_centos_node_ip
