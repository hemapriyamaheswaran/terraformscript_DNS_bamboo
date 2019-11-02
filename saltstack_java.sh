saltstack_java_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_java_centos_ip)
Rsaltstack_java_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_java_centos_ip | perl -lne 'print join ".", reverse split/\./;')
saltstack_java_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_java_ubuntu_ip)
Rsaltstack_java_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_java_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
saltstack_java_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_java_windows_ip)
Rsaltstack_java_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_java_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'saltstack_java_uhostname1=$(cat /var/named/forward.zone | grep saltstackubuntubamboojava.zippyops.com)' > /home/BSjava.sh
echo 'saltstack_java_uhostname2=$(cat /var/named/reverse.zone | grep saltstackubuntubamboojava.zippyops.com)' >> /home/BSjava.sh
echo 'saltstack_java_chostname1=$(cat /var/named/forward.zone | grep saltstackcentosbamboojava.zippyops.com)' >> /home/BSjava.sh
echo 'saltstack_java_chostname2=$(cat /var/named/reverse.zone | grep saltstackcentosbamboojava.zippyops.com)' >> /home/BSjava.sh
echo 'saltstack_java_whostname1=$(cat /var/named/forward.zone | grep saltstackwindowsbamboojava.zippyops.com)' >> /home/BSjava.sh
echo 'saltstack_java_whostname2=$(cat /var/named/reverse.zone | grep saltstackwindowsbamboojava.zippyops.com)' >> /home/BSjava.sh
echo 'sed -i "/$saltstack_java_chostname1/d" /var/named/forward.zone' >> /home/BSjava.sh
echo 'sed -i "/$saltstack_java_chostname2/d" /var/named/reverse.zone' >> /home/BSjava.sh
echo 'sed -i "/$saltstack_java_uhostname1/d" /var/named/forward.zone' >> /home/BSjava.sh
echo 'sed -i "/$saltstack_java_uhostname2/d" /var/named/reverse.zone' >> /home/BSjava.sh
echo 'sed -i "/$saltstack_java_whostname1/d" /var/named/forward.zone' >> /home/BSjava.sh
echo 'sed -i "/$saltstack_java_whostname2/d" /var/named/reverse.zone' >> /home/BSjava.sh
echo saltstack_java_centos=$saltstack_java_centos_ip >> /home/BSjava.sh
echo Rsaltstack_java_centos=$Rsaltstack_java_centos_ip >> /home/BSjava.sh
echo saltstack_java_ubuntu=$saltstack_java_ubuntu_ip >> /home/BSjava.sh
echo Rsaltstack_java_ubuntu=$Rsaltstack_java_ubuntu_ip >> /home/BSjava.sh
echo saltstack_java_windows=$saltstack_java_windows_ip >> /home/BSjava.sh
echo Rsaltstack_java_windows=$Rsaltstack_java_windows_ip >> /home/BSjava.sh
echo 'saltstack_java_chostname3=$(cat /var/named/forward.zone | grep $saltstack_java_centos)' >> /home/BSjava.sh
echo 'saltstack_java_chostname4=$(cat /var/named/reverse.zone | grep $Rsaltstack_java_centos)' >> /home/BSjava.sh
echo 'saltstack_java_uhostname3=$(cat /var/named/forward.zone | grep $saltstack_java_ubuntu)' >> /home/BSjava.sh
echo 'saltstack_java_uhostname4=$(cat /var/named/reverse.zone | grep $Rsaltstack_java_ubuntu)' >> /home/BSjava.sh
echo 'saltstack_java_whostname3=$(cat /var/named/forward.zone | grep $saltstack_java_windows)' >> /home/BSjava.sh
echo 'saltstack_java_whostname4=$(cat /var/named/reverse.zone | grep $Rsaltstack_java_windows)' >> /home/BSjava.sh
echo 'sed -i "/$saltstack_java_chostname3/d" /var/named/forward.zone' >> /home/BSjava.sh
echo 'sed -i "/$saltstack_java_chostname4/d" /var/named/reverse.zone' >> /home/BSjava.sh
echo 'sed -i "/$saltstack_java_uhostname3/d" /var/named/forward.zone' >> /home/BSjava.sh
echo 'sed -i "/$saltstack_java_uhostname4/d" /var/named/reverse.zone' >> /home/BSjava.sh
echo 'sed -i "/$saltstack_java_whostname3/d" /var/named/forward.zone' >> /home/BSjava.sh
echo 'sed -i "/$saltstack_java_whostname4/d" /var/named/reverse.zone' >> /home/BSjava.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BSjava.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BSjava.sh
echo "echo saltstackcentosbamboojava.zippyops.com. IN A $saltstack_java_centos_ip >> /var/named/forward.zone" >> /home/BSjava.sh
echo "echo $Rsaltstack_java_centos_ip.in-addr.arpa. IN PTR saltstackcentosbamboojava.zippyops.com. >> /var/named/reverse.zone" >> /home/BSjava.sh
echo "echo saltstackubuntubamboojava.zippyops.com. IN A $saltstack_java_ubuntu_ip >> /var/named/forward.zone" >> /home/BSjava.sh
echo "echo $Rsaltstack_java_ubuntu_ip.in-addr.arpa. IN PTR saltstackubuntubamboojava.zippyops.com. >> /var/named/reverse.zone" >> /home/BSjava.sh
echo "echo saltstackwindowsbamboojava.zippyops.com. IN A $saltstack_java_windows_ip >> /var/named/forward.zone" >> /home/BSjava.sh
echo "echo $Rsaltstack_java_windows_ip.in-addr.arpa. IN PTR saltstackwindowsbamboojava.zippyops.com. >> /var/named/reverse.zone" >> /home/BSjava.sh
echo "service named restart" >> /home/BSjava.sh
echo "rm -rf /home/BSjava.sh" >> /home/BSjava.sh
chmod 755 /home/BSjava.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BSjava.sh root@192.168.1.5:/home/BSjava.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_java_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_java_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_java_windows_ip

