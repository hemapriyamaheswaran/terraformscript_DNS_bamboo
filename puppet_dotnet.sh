Puppet_dotnet_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_dotnet_windows_ip)
RPuppet_dotnet_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_dotnet_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'puppet_dotnet_whostname1=$(cat /var/named/forward.zone | grep puppetwindowsbamboodotnet.zippyops.com)' > /home/BPdotnet.sh
echo 'puppet_dotnet_whostname2=$(cat /var/named/reverse.zone | grep puppetwindowsbamboodotnet.zippyops.com)' >> /home/BPdotnet.sh
echo 'sed -i "/$puppet_dotnet_whostname1/d" /var/named/forward.zone' >> /home/BPdotnet.sh
echo 'sed -i "/$puppet_dotnet_whostname2/d" /var/named/reverse.zone' >> /home/BPdotnet.sh
echo Puppet_dotnet_windows=$Puppet_dotnet_windows_ip >> /home/BPdotnet.sh
echo RPuppet_dotnet_windows=$RPuppet_dotnet_windows_ip >> /home/BPdotnet.sh
echo 'puppet_dotnet_whostname3=$(cat /var/named/forward.zone | grep $Puppet_dotnet_windows)' >> /home/BPdotnet.sh
echo 'puppet_dotnet_whostname4=$(cat /var/named/reverse.zone | grep $RPuppet_dotnet_windows)' >> /home/BPdotnet.sh
echo 'sed -i "/$puppet_dotnet_whostname3/d" /var/named/forward.zone' >> /home/BPdotnet.sh
echo 'sed -i "/$puppet_dotnet_whostname4/d" /var/named/reverse.zone' >> /home/BPdotnet.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BPdotnet.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BPdotnet.sh
echo "echo puppetwindowsbamboodotnet.zippyops.com. IN A $Puppet_dotnet_windows_ip >> /var/named/forward.zone" >> /home/BPdotnet.sh
echo "echo $RPuppet_dotnet_windows_ip.in-addr.arpa. IN PTR puppetwindowsbamboodotnet.zippyops.com. >> /var/named/reverse.zone" >> /home/BPdotnet.sh
echo "service named restart" >> /home/BPdotnet.sh
echo "rm -rf /home/BPdotnet.sh" >> /home/BPdotnet.sh
chmod 755 /home/BPdotnet.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BPdotnet.sh root@192.168.1.5:/home/BPdotnet.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_dotnet_windows_ip

