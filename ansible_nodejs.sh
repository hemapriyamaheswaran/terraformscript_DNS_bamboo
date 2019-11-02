Ansible_nodejs_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_nodejs_centos_ip)
RAnsible_nodejs_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_nodejs_centos_ip | perl -lne 'print join ".", reverse split/\./;')
Ansible_nodejs_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_nodejs_ubuntu_ip)
RAnsible_nodejs_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_nodejs_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
Ansible_nodejs_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_nodejs_windows_ip)
RAnsible_nodejs_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_nodejs_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'ansible_nodejs_uhostname1=$(cat /var/named/forward.zone | grep bambooansibleubuntunodejs.zippyops.com)' > /home/BAnodejs.sh
echo 'ansible_nodejs_uhostname2=$(cat /var/named/reverse.zone | grep bambooansibleubuntunodejs.zippyops.com)' >> /home/BAnodejs.sh
echo 'ansible_nodejs_chostname1=$(cat /var/named/forward.zone | grep bambooansiblecentosnodejs.zippyops.com)' >> /home/BAnodejs.sh
echo 'ansible_nodejs_chostname2=$(cat /var/named/reverse.zone | grep bambooansiblecentosnodejs.zippyops.com)' >> /home/BAnodejs.sh
echo 'ansible_nodejs_whostname1=$(cat /var/named/forward.zone | grep bambooansiblewindowsnodejs.zippyops.com)' >> /home/BAnodejs.sh
echo 'ansible_nodejs_whostname2=$(cat /var/named/reverse.zone | grep bambooansiblewindowsnodejs.zippyops.com)' >> /home/BAnodejs.sh
echo 'sed -i "/$ansible_nodejs_chostname1/d" /var/named/forward.zone' >> /home/BAnodejs.sh
echo 'sed -i "/$ansible_nodejs_chostname2/d" /var/named/reverse.zone' >> /home/BAnodejs.sh
echo 'sed -i "/$ansible_nodejs_uhostname1/d" /var/named/forward.zone' >> /home/BAnodejs.sh
echo 'sed -i "/$ansible_nodejs_uhostname2/d" /var/named/reverse.zone' >> /home/BAnodejs.sh
echo 'sed -i "/$ansible_nodejs_whostname1/d" /var/named/forward.zone' >> /home/BAnodejs.sh
echo 'sed -i "/$ansible_nodejs_whostname2/d" /var/named/reverse.zone' >> /home/BAnodejs.sh
echo Ansible_nodejs_centos=$Ansible_nodejs_centos_ip >> /home/BAnodejs.sh
echo RAnsible_nodejs_centos=$RAnsible_nodejs_centos_ip >> /home/BAnodejs.sh
echo Ansible_nodejs_ubuntu=$Ansible_nodejs_ubuntu_ip >> /home/BAnodejs.sh
echo RAnsible_nodejs_ubuntu=$RAnsible_nodejs_ubuntu_ip >> /home/BAnodejs.sh
echo Ansible_nodejs_windows=$Ansible_nodejs_windows_ip >> /home/BAnodejs.sh
echo RAnsible_nodejs_windows=$RAnsible_nodejs_windows_ip >> /home/BAnodejs.sh
echo 'ansible_nodejs_chostname3=$(cat /var/named/forward.zone | grep $Ansible_nodejs_centos)' >> /home/BAnodejs.sh
echo 'ansible_nodejs_chostname4=$(cat /var/named/reverse.zone | grep $RAnsible_nodejs_centos)' >> /home/BAnodejs.sh
echo 'ansible_nodejs_uhostname3=$(cat /var/named/forward.zone | grep $Ansible_nodejs_ubuntu)' >> /home/BAnodejs.sh
echo 'ansible_nodejs_uhostname4=$(cat /var/named/reverse.zone | grep $RAnsible_nodejs_ubuntu)' >> /home/BAnodejs.sh
echo 'ansible_nodejs_whostname3=$(cat /var/named/forward.zone | grep $Ansible_nodejs_windows)' >> /home/BAnodejs.sh
echo 'ansible_nodejs_whostname4=$(cat /var/named/reverse.zone | grep $RAnsible_nodejs_windows)' >> /home/BAnodejs.sh
echo 'sed -i "/$ansible_nodejs_chostname3/d" /var/named/forward.zone' >> /home/BAnodejs.sh
echo 'sed -i "/$ansible_nodejs_chostname4/d" /var/named/reverse.zone' >> /home/BAnodejs.sh
echo 'sed -i "/$ansible_nodejs_uhostname3/d" /var/named/forward.zone' >> /home/BAnodejs.sh
echo 'sed -i "/$ansible_nodejs_uhostname4/d" /var/named/reverse.zone' >> /home/BAnodejs.sh
echo 'sed -i "/$ansible_nodejs_whostname3/d" /var/named/forward.zone' >> /home/BAnodejs.sh
echo 'sed -i "/$ansible_nodejs_whostname4/d" /var/named/reverse.zone' >> /home/BAnodejs.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BAnodejs.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BAnodejs.sh
echo "echo bambooansiblecentosnodejs.zippyops.com. IN A $Ansible_nodejs_centos_ip >> /var/named/forward.zone" >> /home/BAnodejs.sh
echo "echo $RAnsible_nodejs_centos_ip.in-addr.arpa. IN PTR bambooansiblecentosnodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BAnodejs.sh
echo "echo bambooansibleubuntunodejs.zippyops.com. IN A $Ansible_nodejs_ubuntu_ip >> /var/named/forward.zone" >> /home/BAnodejs.sh
echo "echo $RAnsible_nodejs_ubuntu_ip.in-addr.arpa. IN PTR bambooansibleubuntunodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BAnodejs.sh
echo "echo bambooansiblewindowsnodejs.zippyops.com. IN A $Ansible_nodejs_windows_ip >> /var/named/forward.zone" >> /home/BAnodejs.sh
echo "echo $RAnsible_nodejs_windows_ip.in-addr.arpa. IN PTR bambooansiblewindowsnodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BAnodejs.sh
echo "service named restart" >> /home/BAnodejs.sh
echo "rm -rf /home/BAnodejs.sh" >> /home/BAnodejs.sh
chmod 755 /home/BAnodejs.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BAnodejs.sh root@192.168.1.5:/home/BAnodejs.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_nodejs_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_nodejs_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_nodejs_windows_ip

