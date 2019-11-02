saltstack_php_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_php_centos_ip)
Rsaltstack_php_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_php_centos_ip | perl -lne 'print join ".", reverse split/\./;')
saltstack_php_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_php_ubuntu_ip)
Rsaltstack_php_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_php_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
saltstack_php_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_php_windows_ip)
Rsaltstack_php_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_php_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'saltstack_php_chostname1=$(cat /var/named/forward.zone | grep saltstackcentosbamboophp.zippyops.com)' > /home/BSphp.sh
echo 'saltstack_php_chostname2=$(cat /var/named/reverse.zone | grep saltstackcentosbamboophp.zippyops.com)' >> /home/BSphp.sh
echo 'saltstack_php_uhostname1=$(cat /var/named/forward.zone | grep saltstackubuntubamboophp.zippyops.com)' >> /home/BSphp.sh
echo 'saltstack_php_uhostname2=$(cat /var/named/reverse.zone | grep saltstackubuntubamboophp.zippyops.com)' >> /home/BSphp.sh
echo 'saltstack_php_whostname1=$(cat /var/named/forward.zone | grep saltstackwindowsbamboophp.zippyops.com)' >> /home/BSphp.sh
echo 'saltstack_php_whostname2=$(cat /var/named/reverse.zone | grep saltstackwindowsbamboophp.zippyops.com)' >> /home/BSphp.sh
echo 'sed -i "/$saltstack_php_chostname1/d" /var/named/forward.zone' >> /home/BSphp.sh
echo 'sed -i "/$saltstack_php_chostname2/d" /var/named/reverse.zone' >> /home/BSphp.sh
echo 'sed -i "/$saltstack_php_uhostname1/d" /var/named/forward.zone' >> /home/BSphp.sh
echo 'sed -i "/$saltstack_php_uhostname2/d" /var/named/reverse.zone' >> /home/BSphp.sh
echo 'sed -i "/$saltstack_php_whostname1/d" /var/named/forward.zone' >> /home/BSphp.sh
echo 'sed -i "/$saltstack_php_whostname2/d" /var/named/reverse.zone' >> /home/BSphp.sh
echo saltstack_php_centos=$saltstack_php_centos_ip >> /home/BSphp.sh
echo Rsaltstack_php_centos=$Rsaltstack_php_centos_ip >> /home/BSphp.sh
echo saltstack_php_ubuntu=$saltstack_php_ubuntu_ip >> /home/BSphp.sh
echo Rsaltstack_php_ubuntu=$Rsaltstack_php_ubuntu_ip >> /home/BSphp.sh
echo saltstack_php_windows=$saltstack_php_windows_ip >> /home/BSphp.sh
echo Rsaltstack_php_windows=$Rsaltstack_php_windows_ip >> /home/BSphp.sh
echo 'saltstack_php_chostname3=$(cat /var/named/forward.zone | grep $saltstack_php_centos)' >> /home/BSphp.sh
echo 'saltstack_php_chostname4=$(cat /var/named/reverse.zone | grep $Rsaltstack_php_centos)' >> /home/BSphp.sh
echo 'saltstack_php_uhostname3=$(cat /var/named/forward.zone | grep $saltstack_php_ubuntu)' >> /home/BSphp.sh
echo 'saltstack_php_uhostname4=$(cat /var/named/reverse.zone | grep $Rsaltstack_php_ubuntu)' >> /home/BSphp.sh
echo 'saltstack_php_whostname3=$(cat /var/named/forward.zone | grep $saltstack_php_windows)' >> /home/BSphp.sh
echo 'saltstack_php_whostname4=$(cat /var/named/reverse.zone | grep $saltstack_php_windows)' >> /home/BSphp.sh
echo 'sed -i "/$saltstack_php_chostname3/d" /var/named/forward.zone' >> /home/BSphp.sh
echo 'sed -i "/$saltstack_php_chostname4/d" /var/named/reverse.zone' >> /home/BSphp.sh
echo 'sed -i "/$saltstack_php_uhostname3/d" /var/named/forward.zone' >> /home/BSphp.sh
echo 'sed -i "/$saltstack_php_uhostname4/d" /var/named/reverse.zone' >> /home/BSphp.sh
echo 'sed -i "/$saltstack_php_whostname3/d" /var/named/forward.zone' >> /home/BSphp.sh
echo 'sed -i "/$saltstack_php_whostname4/d" /var/named/reverse.zone' >> /home/BSphp.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BSphp.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BSphp.sh
echo "echo saltstackcentosbamboophp.zippyops.com. IN A $saltstack_php_centos_ip >> /var/named/forward.zone" >> /home/BSphp.sh
echo "echo $Rsaltstack_php_centos_ip.in-addr.arpa. IN PTR saltstackcentosbamboophp.zippyops.com. >> /var/named/reverse.zone" >> /home/BSphp.sh
echo "echo saltstackubuntubamboophp.zippyops.com. IN A $saltstack_php_ubuntu_ip >> /var/named/forward.zone" >> /home/BSphp.sh
echo "echo $Rsaltstack_php_ubuntu_ip.in-addr.arpa. IN PTR saltstackubuntubamboophp.zippyops.com. >> /var/named/reverse.zone" >> /home/BSphp.sh
echo "echo saltstackwindowsbamboophp.zippyops.com. IN A $saltstack_php_windows_ip >> /var/named/forward.zone" >> /home/BSphp.sh
echo "echo $Rsaltstack_php_windows_ip.in-addr.arpa. IN PTR saltstackwindowsbamboophp.zippyops.com. >> /var/named/reverse.zone" >> /home/BSphp.sh
echo "service named restart" >> /home/BSphp.sh
echo "rm -rf /home/BSphp.sh" >> /home/BSphp.sh
chmod 755 /home/BSphp.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BSphp.sh root@192.168.1.5:/home/BSphp.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_php_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_php_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_php_windows_ip
