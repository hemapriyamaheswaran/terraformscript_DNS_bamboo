Ansible_dotnet_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_dotnet_windows_ip)
RAnsible_dotnet_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_dotnet_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'ansible_dotnet_whostname1=$(cat /var/named/forward.zone | grep bambooansiblewindowsdotnet.zippyops.com)' > /home/BAdotnet.sh
echo 'ansible_dotnet_whostname2=$(cat /var/named/reverse.zone | grep bambooansiblewindowsdotnet.zippyops.com)' >> /home/BAdotnet.sh
echo 'sed -i "/$ansible_dotnet_whostname1/d" /var/named/forward.zone' >> /home/BAdotnet.sh
echo 'sed -i "/$ansible_dotnet_whostname2/d" /var/named/reverse.zone' >> /home/BAdotnet.sh
echo Ansible_dotnet_windows=$Ansible_dotnet_windows_ip >> /home/BAdotnet.sh
echo RAnsible_dotnet_windows=$RAnsible_dotnet_windows_ip >> /home/BAdotnet.sh
echo 'ansible_dotnet_whostname3=$(cat /var/named/forward.zone | grep $Ansible_dotnet_windows)' >> /home/BAdotnet.sh
echo 'ansible_dotnet_whostname4=$(cat /var/named/reverse.zone | grep $RAnsible_dotnet_windows)' >> /home/BAdotnet.sh
echo 'sed -i "/$ansible_dotnet_whostname3/d" /var/named/forward.zone' >> /home/BAdotnet.sh
echo 'sed -i "/$ansible_dotnet_whostname4/d" /var/named/reverse.zone' >> /home/BAdotnet.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BAdotnet.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BAdotnet.sh
echo "echo bambooansiblewindowsdotnet.zippyops.com. IN A $Ansible_dotnet_windows_ip >> /var/named/forward.zone" >> /home/BAdotnet.sh
echo "echo $RAnsible_dotnet_windows_ip.in-addr.arpa. IN PTR bambooansiblewindowsdotnet.zippyops.com. >> /var/named/reverse.zone" >> /home/BAdotnet.sh
echo "service named restart" >> /home/BAdotnet.sh
echo "rm -rf /home/BAdotnet.sh" >> /home/BAdotnet.sh
chmod 755 /home/BAdotnet.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BAdotnet.sh root@192.168.1.5:/home/BAdotnet.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_dotnet_windows_ip

