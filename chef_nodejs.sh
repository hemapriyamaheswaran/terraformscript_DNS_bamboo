Chef_nodejs_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_nodejs_centos_ip)
RChef_nodejs_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_nodejs_centos_ip | perl -lne 'print join ".", reverse split/\./;')
Chef_nodejs_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_nodejs_ubuntu_ip)
RChef_nodejs_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_nodejs_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
Chef_nodejs_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_nodejs_windows_ip)
RChef_nodejs_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_nodejs_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'chef_nodejs_chostname1=$(cat /var/named/forward.zone | grep bamboochefcentosnodejs.zippyops.com)' > /home/BCnodejs.sh
echo 'chef_nodejs_chostname2=$(cat /var/named/reverse.zone | grep bamboochefcentosnodejs.zippyops.com)' >> /home/BCnodejs.sh
echo 'chef_nodejs_uhostname1=$(cat /var/named/forward.zone | grep bamboochefubuntunodejs.zippyops.com)' >> /home/BCnodejs.sh
echo 'chef_nodejs_uhostname2=$(cat /var/named/reverse.zone | grep bamboochefubuntunodejs.zippyops.com)' >> /home/BCnodejs.sh
echo 'chef_nodejs_whostname1=$(cat /var/named/forward.zone | grep bamboochefwindowsnodejs.zippyops.com)' >> /home/BCnodejs.sh
echo 'chef_nodejs_whostname2=$(cat /var/named/reverse.zone | grep bamboochefwindowsnodejs.zippyops.com)' >> /home/BCnodejs.sh
echo 'sed -i "/$chef_nodejs_chostname1/d" /var/named/forward.zone' >> /home/BCnodejs.sh
echo 'sed -i "/$chef_nodejs_chostname2/d" /var/named/reverse.zone' >> /home/BCnodejs.sh
echo 'sed -i "/$chef_nodejs_uhostname1/d" /var/named/forward.zone' >> /home/BCnodejs.sh
echo 'sed -i "/$chef_nodejs_uhostname2/d" /var/named/reverse.zone' >> /home/BCnodejs.sh
echo 'sed -i "/$chef_nodejs_whostname1/d" /var/named/forward.zone' >> /home/BCnodejs.sh
echo 'sed -i "/$chef_nodejs_whostname2/d" /var/named/reverse.zone' >> /home/BCnodejs.sh
echo Chef_nodejs_centos=$Chef_nodejs_centos_ip >> /home/BCnodejs.sh
echo RChef_nodejs_centos=$RChef_nodejs_centos_ip >> /home/BCnodejs.sh
echo Chef_nodejs_ubuntu=$Chef_nodejs_ubuntu_ip >> /home/BCnodejs.sh
echo RChef_nodejs_ubuntu=$RChef_nodejs_ubuntu_ip >> /home/BCnodejs.sh
echo Chef_nodejs_windows=$Chef_nodejs_windows_ip >> /home/BCnodejs.sh
echo RChef_nodejs_windows=$RChef_nodejs_windows_ip >> /home/BCnodejs.sh
echo 'chef_nodejs_chostname3=$(cat /var/named/forward.zone | grep $Chef_nodejs_centos)' >> /home/BCnodejs.sh
echo 'chef_nodejs_chostname4=$(cat /var/named/reverse.zone | grep $RChef_nodejs_centos)' >> /home/BCnodejs.sh
echo 'chef_nodejs_uhostname3=$(cat /var/named/forward.zone | grep $Chef_nodejs_ubuntu)' >> /home/BCnodejs.sh
echo 'chef_nodejs_uhostname4=$(cat /var/named/reverse.zone | grep $RChef_nodejs_ubuntu)' >> /home/BCnodejs.sh
echo 'chef_nodejs_whostname3=$(cat /var/named/forward.zone | grep $Chef_nodejs_windows)' >> /home/BCnodejs.sh
echo 'chef_nodejs_whostname4=$(cat /var/named/reverse.zone | grep $RChef_nodejs_windows)' >> /home/BCnodejs.sh
echo 'sed -i "/$chef_nodejs_chostname3/d" /var/named/forward.zone' >> /home/BCnodejs.sh
echo 'sed -i "/$chef_nodejs_chostname4/d" /var/named/reverse.zone' >> /home/BCnodejs.sh
echo 'sed -i "/$chef_nodejs_uhostname3/d" /var/named/forward.zone' >> /home/BCnodejs.sh
echo 'sed -i "/$chef_nodejs_uhostname4/d" /var/named/reverse.zone' >> /home/BCnodejs.sh
echo 'sed -i "/$chef_nodejs_whostname3/d" /var/named/forward.zone' >> /home/BCnodejs.sh
echo 'sed -i "/$chef_nodejs_whostname4/d" /var/named/reverse.zone' >> /home/BCnodejs.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BCnodejs.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BCnodejs.sh
echo "echo bamboochefcentosnodejs.zippyops.com. IN A $Chef_nodejs_centos_ip >> /var/named/forward.zone" >> /home/BCnodejs.sh
echo "echo $RChef_nodejs_centos_ip.in-addr.arpa. IN PTR bamboochefcentosnodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BCnodejs.sh
echo "echo bamboochefubuntunodejs.zippyops.com. IN A $Chef_nodejs_ubuntu_ip >> /var/named/forward.zone" >> /home/BCnodejs.sh
echo "echo $RChef_nodejs_ubuntu_ip.in-addr.arpa. IN PTR bamboochefubuntunodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BCnodejs.sh
echo "echo bamboochefwindowsnodejs.zippyops.com. IN A $Chef_nodejs_windows_ip >> /var/named/forward.zone" >> /home/BCnodejs.sh
echo "echo $RChef_nodejs_windows_ip.in-addr.arpa. IN PTR bamboochefwindowsnodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BCnodejs.sh
echo "service named restart" >> /home/BCnodejs.sh
echo "rm -rf /home/BCnodejs.sh" >> /home/BCnodejs.sh
chmod 755 /home/BCnodejs.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BCnodejs.sh root@192.168.1.5:/home/BCnodejs.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_nodejs_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_nodejs_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_nodejs_windows_ip

