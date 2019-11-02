saltstack_nodejs_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_nodejs_centos_ip)
Rsaltstack_nodejs_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_nodejs_centos_ip | perl -lne 'print join ".", reverse split/\./;')
saltstack_nodejs_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_nodejs_ubuntu_ip)
Rsaltstack_nodejs_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_nodejs_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
saltstack_nodejs_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_nodejs_windows_ip)
Rsaltstack_nodejs_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_nodejs_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'saltstack_nodejs_chostname1=$(cat /var/named/forward.zone | grep saltstackcentosbamboonodejs.zippyops.com)' > /home/BSnodejs.sh
echo 'saltstack_nodejs_chostname2=$(cat /var/named/reverse.zone | grep saltstackcentosbamboonodejs.zippyops.com)' >> /home/BSnodejs.sh
echo 'saltstack_nodejs_uhostname1=$(cat /var/named/forward.zone | grep saltstackubuntubamboonodejs.zippyops.com)' >> /home/BSnodejs.sh
echo 'saltstack_nodejs_uhostname2=$(cat /var/named/reverse.zone | grep saltstackubuntubamboonodejs.zippyops.com)' >> /home/BSnodejs.sh
echo 'saltstack_nodejs_whostname1=$(cat /var/named/forward.zone | grep saltstackwindowsbamboonodejs.zippyops.com)' >> /home/BSnodejs.sh
echo 'saltstack_nodejs_whostname2=$(cat /var/named/reverse.zone | grep saltstackwindowsbamboonodejs.zippyops.com)' >> /home/BSnodejs.sh
echo 'sed -i "/$saltstack_nodejs_chostname1/d" /var/named/forward.zone' >> /home/BSnodejs.sh
echo 'sed -i "/$saltstack_nodejs_chostname2/d" /var/named/reverse.zone' >> /home/BSnodejs.sh
echo 'sed -i "/$saltstack_nodejs_uhostname1/d" /var/named/forward.zone' >> /home/BSnodejs.sh
echo 'sed -i "/$saltstack_nodejs_uhostname2/d" /var/named/reverse.zone' >> /home/BSnodejs.sh
echo 'sed -i "/$saltstack_nodejs_whostname1/d" /var/named/forward.zone' >> /home/BSnodejs.sh
echo 'sed -i "/$saltstack_nodejs_whostname2/d" /var/named/reverse.zone' >> /home/BSnodejs.sh
echo saltstack_nodejs_centos=$saltstack_nodejs_centos_ip >> /home/BSnodejs.sh
echo Rsaltstack_nodejs_centos=$Rsaltstack_nodejs_centos_ip >> /home/BSnodejs.sh
echo saltstack_nodejs_ubuntu=$saltstack_nodejs_ubuntu_ip >> /home/BSnodejs.sh
echo Rsaltstack_nodejs_ubuntu=$Rsaltstack_nodejs_ubuntu_ip >> /home/BSnodejs.sh
echo saltstack_nodejs_windows=$saltstack_nodejs_windows_ip >> /home/BSnodejs.sh
echo Rsaltstack_nodejs_windows=$Rsaltstack_nodejs_windows_ip >> /home/BSnodejs.sh
echo 'saltstack_nodejs_chostname3=$(cat /var/named/forward.zone | grep $saltstack_nodejs_centos)' >> /home/BSnodejs.sh
echo 'saltstack_nodejs_chostname4=$(cat /var/named/reverse.zone | grep $Rsaltstack_nodejs_centos)' >> /home/BSnodejs.sh
echo 'saltstack_nodejs_uhostname3=$(cat /var/named/forward.zone | grep $saltstack_nodejs_ubuntu)' >> /home/BSnodejs.sh
echo 'saltstack_nodejs_uhostname4=$(cat /var/named/reverse.zone | grep $Rsaltstack_nodejs_ubuntu)' >> /home/BSnodejs.sh
echo 'saltstack_nodejs_whostname3=$(cat /var/named/forward.zone | grep $saltstack_nodejs_windows)' >> /home/BSnodejs.sh
echo 'saltstack_nodejs_whostname4=$(cat /var/named/reverse.zone | grep $Rsaltstack_nodejs_windows)' >> /home/BSnodejs.sh
echo 'sed -i "/$saltstack_nodejs_chostname3/d" /var/named/forward.zone' >> /home/BSnodejs.sh
echo 'sed -i "/$saltstack_nodejs_chostname4/d" /var/named/reverse.zone' >> /home/BSnodejs.sh
echo 'sed -i "/$saltstack_nodejs_uhostname3/d" /var/named/forward.zone' >> /home/BSnodejs.sh
echo 'sed -i "/$saltstack_nodejs_uhostname4/d" /var/named/reverse.zone' >> /home/BSnodejs.sh
echo 'sed -i "/$saltstack_nodejs_whostname3/d" /var/named/forward.zone' >> /home/BSnodejs.sh
echo 'sed -i "/$saltstack_nodejs_whostname4/d" /var/named/reverse.zone' >> /home/BSnodejs.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BSnodejs.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BSnodejs.sh
echo "echo saltstackcentosbamboonodejs.zippyops.com. IN A $saltstack_nodejs_centos_ip >> /var/named/forward.zone" >> /home/BSnodejs.sh
echo "echo $Rsaltstack_nodejs_centos_ip.in-addr.arpa. IN PTR saltstackcentosbamboonodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BSnodejs.sh
echo "echo saltstackubuntubamboonodejs.zippyops.com. IN A $saltstack_nodejs_ubuntu_ip >> /var/named/forward.zone" >> /home/BSnodejs.sh
echo "echo $Rsaltstack_nodejs_ubuntu_ip.in-addr.arpa. IN PTR saltstackubuntubamboonodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BSnodejs.sh
echo "echo saltstackwindowsbamboonodejs.zippyops.com. IN A $saltstack_nodejs_windows_ip >> /var/named/forward.zone" >> /home/BSnodejs.sh
echo "echo $Rsaltstack_nodejs_windows_ip.in-addr.arpa. IN PTR saltstackwindowsbamboonodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BSnodejs.sh
echo "service named restart" >> /home/BSnodejs.sh
echo "rm -rf /home/BSnodejs.sh" >> /home/BSnodejs.sh
chmod 755 /home/BSnodejs.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BSnodejs.sh root@192.168.1.5:/home/BSnodejs.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_nodejs_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_nodejs_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_nodejs_windows_ip

