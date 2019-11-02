pePuppet_nodejs_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_nodejs_centos_ip)
RpePuppet_nodejs_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_nodejs_centos_ip | perl -lne 'print join ".", reverse split/\./;')
pePuppet_nodejs_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_nodejs_ubuntu_ip)
RpePuppet_nodejs_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_nodejs_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
pePuppet_nodejs_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_nodejs_windows_ip)
RpePuppet_nodejs_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_nodejs_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'pepuppet_nodejs_chostname1=$(cat /var/named/forward.zone | grep pepuppetcentosbamboonodejs.zippyops.com)' > /home/BpePnodejs.sh
echo 'pepuppet_nodejs_chostname2=$(cat /var/named/reverse.zone | grep pepuppetcentosbamboonodejs.zippyops.com)' >> /home/BpePnodejs.sh
echo 'pepuppet_nodejs_uhostname1=$(cat /var/named/forward.zone | grep pepuppetubuntubamboonodejs.zippyops.com)' >> /home/BpePnodejs.sh
echo 'pepuppet_nodejs_uhostname2=$(cat /var/named/reverse.zone | grep pepuppetubuntubamboonodejs.zippyops.com)' >> /home/BpePnodejs.sh
echo 'pepuppet_nodejs_whostname1=$(cat /var/named/forward.zone | grep pepuppetwindowsbamboonodejs.zippyops.com)' >> /home/BpePnodejs.sh
echo 'pepuppet_nodejs_whostname2=$(cat /var/named/reverse.zone | grep pepuppetwindowsbamboonodejs.zippyops.com)' >> /home/BpePnodejs.sh
echo 'sed -i "/$pepuppet_nodejs_chostname1/d" /var/named/forward.zone' >> /home/BpePnodejs.sh
echo 'sed -i "/$pepuppet_nodejs_chostname2/d" /var/named/reverse.zone' >> /home/BpePnodejs.sh
echo 'sed -i "/$pepuppet_nodejs_uhostname1/d" /var/named/forward.zone' >> /home/BpePnodejs.sh
echo 'sed -i "/$pepuppet_nodejs_uhostname2/d" /var/named/reverse.zone' >> /home/BpePnodejs.sh
echo 'sed -i "/$pepuppet_nodejs_whostname1/d" /var/named/forward.zone' >> /home/BpePnodejs.sh
echo 'sed -i "/$pepuppet_nodejs_whostname2/d" /var/named/reverse.zone' >> /home/BpePnodejs.sh
echo pepuppet_nodejs_centos=$pePuppet_nodejs_centos_ip >> /home/BpePnodejs.sh
echo Rpepuppet_nodejs_centos=$RpePuppet_nodejs_centos_ip >> /home/BpePnodejs.sh
echo pepuppet_nodejs_ubuntu=$pePuppet_nodejs_ubuntu_ip >> /home/BpePnodejs.sh
echo Rpepuppet_nodejs_ubuntu=$RpePuppet_nodejs_ubuntu_ip >> /home/BpePnodejs.sh
echo pepuppet_nodejs_windows=$pePuppet_nodejs_windows_ip >> /home/BpePnodejs.sh
echo Rpepuppet_nodejs_windows=$RpePuppet_nodejs_windows_ip >> /home/BpePnodejs.sh
echo 'pepuppet_nodejs_chostname3=$(cat /var/named/forward.zone | grep $pepuppet_nodejs_centos)' >> /home/BpePnodejs.sh
echo 'pepuppet_nodejs_chostname4=$(cat /var/named/reverse.zone | grep $Rpepuppet_nodejs_centos)' >> /home/BpePnodejs.sh
echo 'pepuppet_nodejs_uhostname3=$(cat /var/named/forward.zone | grep $pepuppet_nodejs_ubuntu)' >> /home/BpePnodejs.sh
echo 'pepuppet_nodejs_uhostname4=$(cat /var/named/reverse.zone | grep $Rpepuppet_nodejs_ubuntu)' >> /home/BpePnodejs.sh
echo 'pepuppet_nodejs_whostname3=$(cat /var/named/forward.zone | grep $pepuppet_nodejs_windows)' >> /home/BpePnodejs.sh
echo 'pepuppet_nodejs_whostname4=$(cat /var/named/reverse.zone | grep $Rpepuppet_nodejs_windows)' >> /home/BpePnodejs.sh
echo 'sed -i "/$pepuppet_nodejs_chostname3/d" /var/named/forward.zone' >> /home/BpePnodejs.sh
echo 'sed -i "/$pepuppet_nodejs_chostname4/d" /var/named/reverse.zone' >> /home/BpePnodejs.sh
echo 'sed -i "/$pepuppet_nodejs_uhostname3/d" /var/named/forward.zone' >> /home/BpePnodejs.sh
echo 'sed -i "/$pepuppet_nodejs_uhostname4/d" /var/named/reverse.zone' >> /home/BpePnodejs.sh
echo 'sed -i "/$pepuppet_nodejs_whostname3/d" /var/named/forward.zone' >> /home/BpePnodejs.sh
echo 'sed -i "/$pepuppet_nodejs_whostname4/d" /var/named/reverse.zone' >> /home/BpePnodejs.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BpePnodejs.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BpePnodejs.sh
echo "echo pepuppetcentosbamboonodejs.zippyops.com. IN A $pePuppet_nodejs_centos_ip >> /var/named/forward.zone" >> /home/BpePnodejs.sh
echo "echo $RpePuppet_nodejs_centos_ip.in-addr.arpa. IN PTR pepuppetcentosbamboonodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BpePnodejs.sh
echo "echo pepuppetubuntubamboonodejs.zippyops.com. IN A $pePuppet_nodejs_ubuntu_ip >> /var/named/forward.zone" >> /home/BpePnodejs.sh
echo "echo $RpePuppet_nodejs_ubuntu_ip.in-addr.arpa. IN PTR pepuppetubuntubamboonodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BpePnodejs.sh
echo "echo pepuppetwindowsbamboonodejs.zippyops.com. IN A $pePuppet_nodejs_windows_ip >> /var/named/forward.zone" >> /home/BpePnodejs.sh
echo "echo $RpePuppet_nodejs_windows_ip.in-addr.arpa. IN PTR pepuppetwindowsbamboonodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BpePnodejs.sh
echo "service named restart" >> /home/BpePnodejs.sh
echo "rm -rf /home/BpePnodejs.sh" >> /home/BpePnodejs.sh
chmod 755 /home/BpePnodejs.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BpePnodejs.sh root@192.168.1.5:/home/BpePnodejs.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_nodejs_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_nodejs_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_nodejs_windows_ip
