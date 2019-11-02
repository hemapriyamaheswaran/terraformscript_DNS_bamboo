pePuppet_php_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_php_centos_ip)
RpePuppet_php_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_php_centos_ip | perl -lne 'print join ".", reverse split/\./;')
pePuppet_php_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_php_ubuntu_ip)
RpePuppet_php_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_php_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
pePuppet_php_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_php_windows_ip)
RpePuppet_php_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_php_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'pepuppet_php_chostname1=$(cat /var/named/forward.zone | grep pepuppetcentosbamboophp.zippyops.com)' > /home/BpePphp.sh
echo 'pepuppet_php_chostname2=$(cat /var/named/reverse.zone | grep pepuppetcentosbamboophp.zippyops.com)' >> /home/BpePphp.sh
echo 'pepuppet_php_uhostname1=$(cat /var/named/forward.zone | grep pepuppetubuntubamboophp.zippyops.com)' >> /home/BpePphp.sh
echo 'pepuppet_php_uhostname2=$(cat /var/named/reverse.zone | grep pepuppetubuntubamboophp.zippyops.com)' >> /home/BpePphp.sh
echo 'pepuppet_php_whostname1=$(cat /var/named/forward.zone | grep pepuppetwindowsbamboophp.zippyops.com)' >> /home/BpePphp.sh
echo 'pepuppet_php_whostname2=$(cat /var/named/reverse.zone | grep pepuppetwindowsbamboophp.zippyops.com)' >> /home/BpePphp.sh
echo 'sed -i "/$pepuppet_php_chostname1/d" /var/named/forward.zone' >> /home/BpePphp.sh
echo 'sed -i "/$pepuppet_php_chostname2/d" /var/named/reverse.zone' >> /home/BpePphp.sh
echo 'sed -i "/$pepuppet_php_uhostname1/d" /var/named/forward.zone' >> /home/BpePphp.sh
echo 'sed -i "/$pepuppet_php_uhostname2/d" /var/named/reverse.zone' >> /home/BpePphp.sh
echo 'sed -i "/$pepuppet_php_whostname1/d" /var/named/forward.zone' >> /home/BpePphp.sh
echo 'sed -i "/$pepuppet_php_whostname2/d" /var/named/reverse.zone' >> /home/BpePphp.sh
echo pePuppet_php_centos=$pePuppet_php_centos_ip >> /home/BpePphp.sh
echo RpePuppet_php_centos=$RpePuppet_php_centos_ip >> /home/BpePphp.sh
echo pePuppet_php_ubuntu=$pePuppet_php_ubuntu_ip >> /home/BpePphp.sh
echo RpePuppet_php_ubuntu=$RpePuppet_php_ubuntu_ip >> /home/BpePphp.sh
echo pePuppet_php_windows=$pePuppet_php_windows_ip >> /home/BpePphp.sh
echo RpePuppet_php_windows=$RpePuppet_php_windows_ip >> /home/BpePphp.sh
echo 'pepuppet_php_chostname3=$(cat /var/named/forward.zone | grep $pePuppet_php_centos)' >> /home/BpePphp.sh
echo 'pepuppet_php_chostname4=$(cat /var/named/reverse.zone | grep $RpePuppet_php_centos)' >> /home/BpePphp.sh
echo 'pepuppet_php_uhostname3=$(cat /var/named/forward.zone | grep $pePuppet_php_ubuntu)' >> /home/BpePphp.sh
echo 'pepuppet_php_uhostname4=$(cat /var/named/reverse.zone | grep $RpePuppet_php_ubuntu)' >> /home/BpePphp.sh
echo 'pepuppet_php_whostname3=$(cat /var/named/forward.zone | grep $pePuppet_php_windows)' >> /home/BpePphp.sh
echo 'pepuppet_php_whostname4=$(cat /var/named/reverse.zone | grep $RpePuppet_php_windows)' >> /home/BpePphp.sh
echo 'sed -i "/$pepuppet_php_chostname3/d" /var/named/forward.zone' >> /home/BpePphp.sh
echo 'sed -i "/$pepuppet_php_chostname4/d" /var/named/reverse.zone' >> /home/BpePphp.sh
echo 'sed -i "/$pepuppet_php_uhostname3/d" /var/named/forward.zone' >> /home/BpePphp.sh
echo 'sed -i "/$pepuppet_php_uhostname4/d" /var/named/reverse.zone' >> /home/BpePphp.sh
echo 'sed -i "/$pepuppet_php_whostname3/d" /var/named/forward.zone' >> /home/BpePphp.sh
echo 'sed -i "/$pepuppet_php_whostname4/d" /var/named/reverse.zone' >> /home/BpePphp.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BpePphp.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BpePphp.sh
echo "echo pepuppetcentosbamboophp.zippyops.com. IN A $pePuppet_php_centos_ip >> /var/named/forward.zone" >> /home/BpePphp.sh
echo "echo $RpePuppet_php_centos_ip.in-addr.arpa. IN PTR pepuppetcentosbamboophp.zippyops.com. >> /var/named/reverse.zone" >> /home/BpePphp.sh
echo "echo pepuppetubuntubamboophp.zippyops.com. IN A $pePuppet_php_ubuntu_ip >> /var/named/forward.zone" >> /home/BpePphp.sh
echo "echo $RpePuppet_php_ubuntu_ip.in-addr.arpa. IN PTR pepuppetubuntubamboophp.zippyops.com. >> /var/named/reverse.zone" >> /home/BpePphp.sh
echo "echo pepuppetwindowsbamboophp.zippyops.com. IN A $pePuppet_php_windows_ip >> /var/named/forward.zone" >> /home/BpePphp.sh
echo "echo $RpePuppet_php_windows_ip.in-addr.arpa. IN PTR pepuppetwindowsbamboophp.zippyops.com. >> /var/named/reverse.zone" >> /home/BpePphp.sh
echo "service named restart" >> /home/BpePphp.sh
echo "rm -rf /home/BpePphp.sh" >> /home/BpePphp.sh
chmod 755 /home/BpePphp.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BpePphp.sh root@192.168.1.5:/home/BpePphp.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_php_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_php_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_php_windows_ip

