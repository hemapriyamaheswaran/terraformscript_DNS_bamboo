Ansible_java_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_java_centos_ip)
RAnsible_java_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_java_centos_ip | perl -lne 'print join ".", reverse split/\./;')
Ansible_java_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_java_ubuntu_ip)
RAnsible_java_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_java_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
Ansible_java_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_java_windows_ip)
RAnsible_java_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_java_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'ansible_java_uhostname1=$(cat /var/named/forward.zone | grep bambooansibleubuntujava.zippyops.com)' > /home/BAjava.sh
echo 'ansible_java_uhostname2=$(cat /var/named/reverse.zone | grep bambooansibleubuntujava.zippyops.com)' >> /home/BAjava.sh
echo 'ansible_java_chostname1=$(cat /var/named/forward.zone | grep bambooansiblecentosjava.zippyops.com)' >> /home/BAjava.sh
echo 'ansible_java_chostname2=$(cat /var/named/reverse.zone | grep bambooansiblecentosjava.zippyops.com)' >> /home/BAjava.sh
echo 'ansible_java_whostname1=$(cat /var/named/forward.zone | grep bambooansiblewindowsjava.zippyops.com)' >> /home/BAjava.sh
echo 'ansible_java_whostname2=$(cat /var/named/reverse.zone | grep bambooansiblewindowsjava.zippyops.com)' >> /home/BAjava.sh
echo 'sed -i "/$ansible_java_chostname1/d" /var/named/forward.zone' >> /home/BAjava.sh
echo 'sed -i "/$ansible_java_chostname2/d" /var/named/reverse.zone' >> /home/BAjava.sh
echo 'sed -i "/$ansible_java_uhostname1/d" /var/named/forward.zone' >> /home/BAjava.sh
echo 'sed -i "/$ansible_java_uhostname2/d" /var/named/reverse.zone' >> /home/BAjava.sh
echo 'sed -i "/$ansible_java_whostname1/d" /var/named/forward.zone' >> /home/BAjava.sh
echo 'sed -i "/$ansible_java_whostname2/d" /var/named/reverse.zone' >> /home/BAjava.sh
echo Ansible_java_centos=$Ansible_java_centos_ip >> /home/BAjava.sh
echo RAnsible_java_centos=$RAnsible_java_centos_ip >> /home/BAjava.sh
echo Ansible_java_ubuntu=$Ansible_java_ubuntu_ip >> /home/BAjava.sh
echo RAnsible_java_ubuntu=$RAnsible_java_ubuntu_ip >> /home/BAjava.sh
echo Ansible_java_windows=$Ansible_java_windows_ip >> /home/BAjava.sh
echo RAnsible_java_windows=$RAnsible_java_windows_ip >> /home/BAjava.sh
echo 'ansible_java_chostname3=$(cat /var/named/forward.zone | grep $Ansible_java_centos)' >> /home/BAjava.sh
echo 'ansible_java_chostname4=$(cat /var/named/reverse.zone | grep $RAnsible_java_centos)' >> /home/BAjava.sh
echo 'ansible_java_uhostname3=$(cat /var/named/forward.zone | grep $Ansible_java_ubuntu)' >> /home/BAjava.sh
echo 'ansible_java_uhostname4=$(cat /var/named/reverse.zone | grep $RAnsible_java_ubuntu)' >> /home/BAjava.sh
echo 'ansible_java_whostname3=$(cat /var/named/forward.zone | grep $Ansible_java_windows)' >> /home/BAjava.sh
echo 'ansible_java_whostname4=$(cat /var/named/reverse.zone | grep $RAnsible_java_windows)' >> /home/BAjava.sh
echo 'sed -i "/$ansible_java_chostname3/d" /var/named/forward.zone' >> /home/BAjava.sh
echo 'sed -i "/$ansible_java_chostname4/d" /var/named/reverse.zone' >> /home/BAjava.sh
echo 'sed -i "/$ansible_java_uhostname3/d" /var/named/forward.zone' >> /home/BAjava.sh
echo 'sed -i "/$ansible_java_uhostname4/d" /var/named/reverse.zone' >> /home/BAjava.sh
echo 'sed -i "/$ansible_java_whostname3/d" /var/named/forward.zone' >> /home/BAjava.sh
echo 'sed -i "/$ansible_java_whostname4/d" /var/named/reverse.zone' >> /home/BAjava.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BAjava.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BAjava.sh
echo "echo bambooansiblecentosjava.zippyops.com. IN A $Ansible_java_centos_ip >> /var/named/forward.zone" >> /home/BAjava.sh
echo "echo $RAnsible_java_centos_ip.in-addr.arpa. IN PTR bambooansiblecentosjava.zippyops.com. >> /var/named/reverse.zone" >> /home/BAjava.sh
echo "echo bambooansibleubuntujava.zippyops.com. IN A $Ansible_java_ubuntu_ip >> /var/named/forward.zone" >> /home/BAjava.sh
echo "echo $RAnsible_java_ubuntu_ip.in-addr.arpa. IN PTR bambooansibleubuntujava.zippyops.com. >> /var/named/reverse.zone" >> /home/BAjava.sh
echo "echo bambooansiblewindowsjava.zippyops.com. IN A $Ansible_java_windows_ip >> /var/named/forward.zone" >> /home/BAjava.sh
echo "echo $RAnsible_java_windows_ip.in-addr.arpa. IN PTR bambooansiblewindowsjava.zippyops.com. >> /var/named/reverse.zone" >> /home/BAjava.sh
echo "service named restart" >> /home/BAjava.sh
echo "rm -rf /home/BAjava.sh" >> /home/BAjava.sh
chmod 755 /home/BAjava.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BAjava.sh root@192.168.1.5:/home/BAjava.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_java_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_java_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_java_windows_ip

