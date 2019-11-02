Chef_java_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_java_centos_ip)
RChef_java_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_java_centos_ip | perl -lne 'print join ".", reverse split/\./;')
Chef_java_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_java_ubuntu_ip)
RChef_java_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_java_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
Chef_java_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_java_windows_ip)
RChef_java_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_java_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'chef_java_chostname1=$(cat /var/named/forward.zone | grep bamboochefcentosjava.zippyops.com)' > /home/BCjava.sh
echo 'chef_java_chostname2=$(cat /var/named/reverse.zone | grep bamboochefcentosjava.zippyops.com)' >> /home/BCjava.sh
echo 'chef_java_uhostname1=$(cat /var/named/forward.zone | grep bamboochefubuntujava.zippyops.com)' >> /home/BCjava.sh
echo 'chef_java_uhostname2=$(cat /var/named/reverse.zone | grep bamboochefubuntujava.zippyops.com)' >> /home/BCjava.sh
echo 'chef_java_whostname1=$(cat /var/named/forward.zone | grep bamboochefwindowsjava.zippyops.com)' >> /home/BCjava.sh
echo 'chef_java_whostname2=$(cat /var/named/reverse.zone | grep bamboochefwindowsjava.zippyops.com)' >> /home/BCjava.sh
echo 'sed -i "/$chef_java_chostname1/d" /var/named/forward.zone' >> /home/BCjava.sh
echo 'sed -i "/$chef_java_chostname2/d" /var/named/reverse.zone' >> /home/BCjava.sh
echo 'sed -i "/$chef_java_uhostname1/d" /var/named/forward.zone' >> /home/BCjava.sh
echo 'sed -i "/$chef_java_uhostname2/d" /var/named/reverse.zone' >> /home/BCjava.sh
echo 'sed -i "/$chef_java_whostname1/d" /var/named/forward.zone' >> /home/BCjava.sh
echo 'sed -i "/$chef_java_whostname2/d" /var/named/reverse.zone' >> /home/BCjava.sh
echo Chef_java_centos=$Chef_java_centos_ip >> /home/BCjava.sh
echo RChef_java_centos=$RChef_java_centos_ip >> /home/BCjava.sh
echo Chef_java_ubuntu=$Chef_java_ubuntu_ip >> /home/BCjava.sh
echo RChef_java_ubuntu=$RChef_java_ubuntu_ip >> /home/BCjava.sh
echo Chef_java_windows=$Chef_java_windows_ip >> /home/BCjava.sh
echo RChef_java_windows=$RChef_java_windows_ip >> /home/BCjava.sh
echo 'chef_java_chostname3=$(cat /var/named/forward.zone | grep $Chef_java_centos)' >> /home/BCjava.sh
echo 'chef_java_chostname4=$(cat /var/named/reverse.zone | grep $RChef_java_centos)' >> /home/BCjava.sh
echo 'chef_java_uhostname3=$(cat /var/named/forward.zone | grep $Chef_java_ubuntu)' >> /home/BCjava.sh
echo 'chef_java_uhostname4=$(cat /var/named/reverse.zone | grep $RChef_java_ubuntu)' >> /home/BCjava.sh
echo 'chef_java_whostname3=$(cat /var/named/forward.zone | grep $Chef_java_windows)' >> /home/BCjava.sh
echo 'chef_java_whostname4=$(cat /var/named/reverse.zone | grep $Chef_java_windows)' >> /home/BCjava.sh
echo 'sed -i "/$chef_java_chostname3/d" /var/named/forward.zone' >> /home/BCjava.sh
echo 'sed -i "/$chef_java_chostname4/d" /var/named/reverse.zone' >> /home/BCjava.sh
echo 'sed -i "/$chef_java_uhostname3/d" /var/named/forward.zone' >> /home/BCjava.sh
echo 'sed -i "/$chef_java_uhostname4/d" /var/named/reverse.zone' >> /home/BCjava.sh
echo 'sed -i "/$chef_java_whostname3/d" /var/named/forward.zone' >> /home/BCjava.sh
echo 'sed -i "/$chef_java_whostname4/d" /var/named/reverse.zone' >> /home/BCjava.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BCjava.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BCjava.sh
echo "echo bamboochefcentosjava.zippyops.com. IN A $Chef_java_centos_ip >> /var/named/forward.zone" >> /home/BCjava.sh
echo "echo $RChef_java_centos_ip.in-addr.arpa. IN PTR bamboochefcentosjava.zippyops.com. >> /var/named/reverse.zone" >> /home/BCjava.sh
echo "echo bamboochefubuntujava.zippyops.com. IN A $Chef_java_ubuntu_ip >> /var/named/forward.zone" >> /home/BCjava.sh
echo "echo $RChef_java_ubuntu_ip.in-addr.arpa. IN PTR bamboochefubuntujava.zippyops.com. >> /var/named/reverse.zone" >> /home/BCjava.sh
echo "echo bamboochefwindowsjava.zippyops.com. IN A $Chef_java_windows_ip >> /var/named/forward.zone" >> /home/BCjava.sh
echo "echo $RChef_java_windows_ip.in-addr.arpa. IN PTR bamboochefwindowsjava.zippyops.com. >> /var/named/reverse.zone" >> /home/BCjava.sh
echo "service named restart" >> /home/BCjava.sh
echo "rm -rf /home/BCjava.sh" >> /home/BCjava.sh
chmod 755 /home/BCjava.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BCjava.sh root@192.168.1.5:/home/BCjava.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_java_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_java_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_java_windows_ip

