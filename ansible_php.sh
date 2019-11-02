Ansible_php_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_php_centos_ip)
RAnsible_php_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_php_centos_ip | perl -lne 'print join ".", reverse split/\./;')
Ansible_php_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_php_ubuntu_ip)
RAnsible_php_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_php_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
Ansible_php_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_php_windows_ip)
RAnsible_php_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_php_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'ansible_php_uhostname1=$(cat /var/named/forward.zone | grep bambooansibleubuntuphp.zippyops.com)' > /home/BAphp.sh
echo 'ansible_php_uhostname2=$(cat /var/named/reverse.zone | grep bambooansibleubuntuphp.zippyops.com)' >> /home/BAphp.sh
echo 'ansible_php_chostname1=$(cat /var/named/forward.zone | grep bambooansiblecentosphp.zippyops.com)' >> /home/BAphp.sh
echo 'ansible_php_chostname2=$(cat /var/named/reverse.zone | grep bambooansiblecentosphp.zippyops.com)' >> /home/BAphp.sh
echo 'ansible_php_whostname1=$(cat /var/named/forward.zone | grep bambooansiblewindowsphp.zippyops.com)' >> /home/BAphp.sh
echo 'ansible_php_whostname2=$(cat /var/named/reverse.zone | grep bambooansiblewindowsphp.zippyops.com)' >> /home/BAphp.sh
echo 'sed -i "/$ansible_php_chostname1/d" /var/named/forward.zone' >> /home/BAphp.sh
echo 'sed -i "/$ansible_php_chostname2/d" /var/named/reverse.zone' >> /home/BAphp.sh
echo 'sed -i "/$ansible_php_uhostname1/d" /var/named/forward.zone' >> /home/BAphp.sh
echo 'sed -i "/$ansible_php_uhostname2/d" /var/named/reverse.zone' >> /home/BAphp.sh
echo 'sed -i "/$ansible_php_whostname1/d" /var/named/forward.zone' >> /home/BAphp.sh
echo 'sed -i "/$ansible_php_whostname2/d" /var/named/reverse.zone' >> /home/BAphp.sh
echo Ansible_php_centos=$Ansible_php_centos_ip >> /home/BAphp.sh
echo RAnsible_php_centos=$RAnsible_php_centos_ip >> /home/BAphp.sh
echo Ansible_php_ubuntu=$Ansible_php_ubuntu_ip >> /home/BAphp.sh
echo RAnsible_php_ubuntu=$RAnsible_php_ubuntu_ip >> /home/BAphp.sh
echo Ansible_php_windows=$Ansible_php_windows_ip >> /home/BAphp.sh
echo RAnsible_php_windows=$RAnsible_php_windows_ip >> /home/BAphp.sh
echo 'ansible_php_chostname3=$(cat /var/named/forward.zone | grep $Ansible_php_centos)' >> /home/BAphp.sh
echo 'ansible_php_chostname4=$(cat /var/named/reverse.zone | grep $RAnsible_php_centos)' >> /home/BAphp.sh
echo 'ansible_php_uhostname3=$(cat /var/named/forward.zone | grep $Ansible_php_ubuntu)' >> /home/BAphp.sh
echo 'ansible_php_uhostname4=$(cat /var/named/reverse.zone | grep $RAnsible_php_ubuntu)' >> /home/BAphp.sh
echo 'ansible_php_whostname3=$(cat /var/named/forward.zone | grep $Ansible_php_windows)' >> /home/BAphp.sh
echo 'ansible_php_whostname4=$(cat /var/named/reverse.zone | grep $RAnsible_php_windows)' >> /home/BAphp.sh
echo 'sed -i "/$ansible_php_chostname3/d" /var/named/forward.zone' >> /home/BAphp.sh
echo 'sed -i "/$ansible_php_chostname4/d" /var/named/reverse.zone' >> /home/BAphp.sh
echo 'sed -i "/$ansible_php_uhostname3/d" /var/named/forward.zone' >> /home/BAphp.sh
echo 'sed -i "/$ansible_php_uhostname4/d" /var/named/reverse.zone' >> /home/BAphp.sh
echo 'sed -i "/$ansible_php_whostname3/d" /var/named/forward.zone' >> /home/BAphp.sh
echo 'sed -i "/$ansible_php_whostname4/d" /var/named/reverse.zone' >> /home/BAphp.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BAphp.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BAphp.sh
echo "echo bambooansiblecentosphp.zippyops.com. IN A $Ansible_php_centos_ip >> /var/named/forward.zone" >> /home/BAphp.sh
echo "echo $RAnsible_php_centos_ip.in-addr.arpa. IN PTR bambooansiblecentosphp.zippyops.com. >> /var/named/reverse.zone" >> /home/BAphp.sh
echo "echo bambooansibleubuntuphp.zippyops.com. IN A $Ansible_php_ubuntu_ip >> /var/named/forward.zone" >> /home/BAphp.sh
echo "echo $RAnsible_php_ubuntu_ip.in-addr.arpa. IN PTR bambooansibleubuntuphp.zippyops.com. >> /var/named/reverse.zone" >> /home/BAphp.sh
echo "echo bambooansiblewindowsphp.zippyops.com. IN A $Ansible_php_windows_ip >> /var/named/forward.zone" >> /home/BAphp.sh
echo "echo $RAnsible_php_windows_ip.in-addr.arpa. IN PTR bambooansiblewindowsphp.zippyops.com. >> /var/named/reverse.zone" >> /home/BAphp.sh
echo "service named restart" >> /home/BAphp.sh
echo "rm -rf /home/BAphp.sh" >> /home/BAphp.sh
chmod 755 /home/BAphp.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BAphp.sh root@192.168.1.5:/home/BAphp.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_php_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_php_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_php_windows_ip

