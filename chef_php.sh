Chef_php_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_php_centos_ip)
RChef_php_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_php_centos_ip | perl -lne 'print join ".", reverse split/\./;')
Chef_php_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_php_ubuntu_ip)
RChef_php_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_php_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
Chef_php_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_php_windows_ip)
RChef_php_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_php_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'chef_php_chostname1=$(cat /var/named/forward.zone | grep bamboochefcentosphp.zippyops.com)' > /home/BCphp.sh
echo 'chef_php_chostname2=$(cat /var/named/reverse.zone | grep bamboochefcentosphp.zippyops.com)' >> /home/BCphp.sh
echo 'chef_php_uhostname1=$(cat /var/named/forward.zone | grep bamboochefubuntuphp.zippyops.com)' >> /home/BCphp.sh
echo 'chef_php_uhostname2=$(cat /var/named/reverse.zone | grep bamboochefubuntuphp.zippyops.com)' >> /home/BCphp.sh
echo 'chef_php_whostname1=$(cat /var/named/forward.zone | grep bamboochefwindowsphp.zippyops.com)' >> /home/BCphp.sh
echo 'chef_php_whostname2=$(cat /var/named/reverse.zone | grep bamboochefwindowsphp.zippyops.com)' >> /home/BCphp.sh
echo 'sed -i "/$chef_php_chostname1/d" /var/named/forward.zone' >> /home/BCphp.sh
echo 'sed -i "/$chef_php_chostname2/d" /var/named/reverse.zone' >> /home/BCphp.sh
echo 'sed -i "/$chef_php_uhostname1/d" /var/named/forward.zone' >> /home/BCphp.sh
echo 'sed -i "/$chef_php_uhostname2/d" /var/named/reverse.zone' >> /home/BCphp.sh
echo 'sed -i "/$chef_php_whostname1/d" /var/named/forward.zone' >> /home/BCphp.sh
echo 'sed -i "/$chef_php_whostname2/d" /var/named/reverse.zone' >> /home/BCphp.sh
echo Chef_php_centos=$Chef_php_centos_ip >> /home/BCphp.sh
echo RChef_php_centos=$RChef_php_centos_ip >> /home/BCphp.sh
echo Chef_php_ubuntu=$Chef_php_ubuntu_ip >> /home/BCphp.sh
echo RChef_php_ubuntu=$RChef_php_ubuntu_ip >> /home/BCphp.sh
echo Chef_php_windows=$Chef_php_windows_ip >> /home/BCphp.sh
echo RChef_php_windows=$RChef_php_windows_ip >> /home/BCphp.sh
echo 'chef_php_chostname3=$(cat /var/named/forward.zone | grep $Chef_php_centos)' >> /home/BCphp.sh
echo 'chef_php_chostname4=$(cat /var/named/reverse.zone | grep $RChef_php_centos)' >> /home/BCphp.sh
echo 'chef_php_uhostname3=$(cat /var/named/forward.zone | grep $Chef_php_ubuntu)' >> /home/BCphp.sh
echo 'chef_php_uhostname4=$(cat /var/named/reverse.zone | grep $RChef_php_ubuntu)' >> /home/BCphp.sh
echo 'chef_php_whostname3=$(cat /var/named/forward.zone | grep $Chef_php_windows)' >> /home/BCphp.sh
echo 'chef_php_whostname4=$(cat /var/named/reverse.zone | grep $RChef_php_windows)' >> /home/BCphp.sh
echo 'sed -i "/$chef_php_chostname3/d" /var/named/forward.zone' >> /home/BCphp.sh
echo 'sed -i "/$chef_php_chostname4/d" /var/named/reverse.zone' >> /home/BCphp.sh
echo 'sed -i "/$chef_php_uhostname3/d" /var/named/forward.zone' >> /home/BCphp.sh
echo 'sed -i "/$chef_php_uhostname4/d" /var/named/reverse.zone' >> /home/BCphp.sh
echo 'sed -i "/$chef_php_whostname3/d" /var/named/forward.zone' >> /home/BCphp.sh
echo 'sed -i "/$chef_php_whostname4/d" /var/named/reverse.zone' >> /home/BCphp.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BCphp.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BCphp.sh
echo "echo bamboochefcentosphp.zippyops.com. IN A $Chef_php_centos_ip >> /var/named/forward.zone" >> /home/BCphp.sh
echo "echo $RChef_php_centos_ip.in-addr.arpa. IN PTR bamboochefcentosphp.zippyops.com. >> /var/named/reverse.zone" >> /home/BCphp.sh
echo "echo bamboochefubuntuphp.zippyops.com. IN A $Chef_php_ubuntu_ip >> /var/named/forward.zone" >> /home/BCphp.sh
echo "echo $RChef_php_ubuntu_ip.in-addr.arpa. IN PTR bamboochefubuntuphp.zippyops.com. >> /var/named/reverse.zone" >> /home/BCphp.sh
echo "echo bamboochefwindowsphp.zippyops.com. IN A $Chef_php_windows_ip >> /var/named/forward.zone" >> /home/BCphp.sh
echo "echo $RChef_php_windows_ip.in-addr.arpa. IN PTR bamboochefwindowsphp.zippyops.com. >> /var/named/reverse.zone" >> /home/BCphp.sh
echo "service named restart" >> /home/BCphp.sh
echo "rm -rf /home/BCphp.sh" >> /home/BCphp.sh
chmod 755 /home/BCphp.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BCphp.sh root@192.168.1.5:/home/BCphp.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_php_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_php_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_php_windows_ip

