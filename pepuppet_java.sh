pePuppet_java_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_java_centos_ip)
RpePuppet_java_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_java_centos_ip | perl -lne 'print join ".", reverse split/\./;')
pePuppet_java_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_java_ubuntu_ip)
RpePuppet_java_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_java_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
pePuppet_java_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_java_windows_ip)
RpePuppet_java_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_java_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'pepuppet_java_chostname1=$(cat /var/named/forward.zone | grep pepuppetcentosbamboojava.zippyops.com)' > /home/BpePjava.sh
echo 'pepuppet_java_chostname2=$(cat /var/named/reverse.zone | grep pepuppetcentosbamboojava.zippyops.com)' >> /home/BpePjava.sh
echo 'pepuppet_java_uhostname1=$(cat /var/named/forward.zone | grep pepuppetubuntubamboojava.zippyops.com)' >> /home/BpePjava.sh
echo 'pepuppet_java_uhostname2=$(cat /var/named/reverse.zone | grep pepuppetubuntubamboojava.zippyops.com)' >> /home/BpePjava.sh
echo 'pepuppet_java_whostname1=$(cat /var/named/forward.zone | grep pepuppetwindowsbamboojava.zippyops.com)' >> /home/BpePjava.sh
echo 'pepuppet_java_whostname2=$(cat /var/named/reverse.zone | grep pepuppetwindowsbamboojava.zippyops.com)' >> /home/BpePjava.sh
echo 'sed -i "/$pepuppet_java_chostname1/d" /var/named/forward.zone' >> /home/BpePjava.sh
echo 'sed -i "/$pepuppet_java_chostname2/d" /var/named/reverse.zone' >> /home/BpePjava.sh
echo 'sed -i "/$pepuppet_java_uhostname1/d" /var/named/forward.zone' >> /home/BpePjava.sh
echo 'sed -i "/$pepuppet_java_uhostname2/d" /var/named/reverse.zone' >> /home/BpePjava.sh
echo 'sed -i "/$pepuppet_java_whostname1/d" /var/named/forward.zone' >> /home/BpePjava.sh
echo 'sed -i "/$pepuppet_java_whostname2/d" /var/named/reverse.zone' >> /home/BpePjava.sh
echo pepuppet_java_centos=$pePuppet_java_centos_ip >> /home/BpePjava.sh
echo Rpepuppet_java_centos=$RpePuppet_java_centos_ip >> /home/BpePjava.sh
echo pepuppet_java_ubuntu=$pePuppet_java_ubuntu_ip >> /home/BpePjava.sh
echo Rpepuppet_java_ubuntu=$RpePuppet_java_ubuntu_ip >> /home/BpePjava.sh
echo pepuppet_java_windows=$pePuppet_java_windows_ip >> /home/BpePjava.sh
echo Rpepuppet_java_windows=$RpePuppet_java_windows_ip >> /home/BpePjava.sh
echo 'pepuppet_java_chostname3=$(cat /var/named/forward.zone | grep $pepuppet_java_centos)' >> /home/BpePjava.sh
echo 'pepuppet_java_chostname4=$(cat /var/named/reverse.zone | grep $Rpepuppet_java_centos)' >> /home/BpePjava.sh
echo 'pepuppet_java_uhostname3=$(cat /var/named/forward.zone | grep $pepuppet_java_ubuntu)' >> /home/BpePjava.sh
echo 'pepuppet_java_uhostname4=$(cat /var/named/reverse.zone | grep $Rpepuppet_java_ubuntu)' >> /home/BpePjava.sh
echo 'pepuppet_java_whostname3=$(cat /var/named/forward.zone | grep $pepuppet_java_windows)' >> /home/BpePjava.sh
echo 'pepuppet_java_whostname4=$(cat /var/named/reverse.zone | grep $Rpepuppet_java_windows)' >> /home/BpePjava.sh
echo 'sed -i "/$pepuppet_java_chostname3/d" /var/named/forward.zone' >> /home/BpePjava.sh
echo 'sed -i "/$pepuppet_java_chostname4/d" /var/named/reverse.zone' >> /home/BpePjava.sh
echo 'sed -i "/$pepuppet_java_uhostname3/d" /var/named/forward.zone' >> /home/BpePjava.sh
echo 'sed -i "/$pepuppet_java_uhostname4/d" /var/named/reverse.zone' >> /home/BpePjava.sh
echo 'sed -i "/$pepuppet_java_whostname3/d" /var/named/forward.zone' >> /home/BpePjava.sh
echo 'sed -i "/$pepuppet_java_whostname4/d" /var/named/reverse.zone' >> /home/BpePjava.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BpePjava.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BpePjava.sh
echo "echo pepuppetcentosbamboojava.zippyops.com. IN A $pePuppet_java_centos_ip >> /var/named/forward.zone" >> /home/BpePjava.sh
echo "echo $RpePuppet_java_centos_ip.in-addr.arpa. IN PTR pepuppetcentosbamboojava.zippyops.com. >> /var/named/reverse.zone" >> /home/BpePjava.sh
echo "echo pepuppetubuntubamboojava.zippyops.com. IN A $pePuppet_java_ubuntu_ip >> /var/named/forward.zone" >> /home/BpePjava.sh
echo "echo $RpePuppet_java_ubuntu_ip.in-addr.arpa. IN PTR pepuppetubuntubamboojava.zippyops.com. >> /var/named/reverse.zone" >> /home/BpePjava.sh
echo "echo pepuppetwindowsbamboojava.zippyops.com. IN A $pePuppet_java_windows_ip >> /var/named/forward.zone" >> /home/BpePjava.sh
echo "echo $RpePuppet_java_windows_ip.in-addr.arpa. IN PTR pepuppetwindowsbamboojava.zippyops.com. >> /var/named/reverse.zone" >> /home/BpePjava.sh
echo "service named restart" >> /home/BpePjava.sh
echo "rm -rf /home/BpePjava.sh" >> /home/BpePjava.sh
chmod 755 /home/BpePjava.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BpePjava.sh root@192.168.1.5:/home/BpePjava.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_java_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_java_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_java_windows_ip


