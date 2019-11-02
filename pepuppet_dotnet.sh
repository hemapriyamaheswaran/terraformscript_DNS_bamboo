
pePuppet_dotnet_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_dotnet_windows_ip)
RpePuppet_dotnet_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_dotnet_windows_ip | perl -lne 'print join ".", reverse split/\./;')

echo 'pepuppet_dotnet_whostname1=$(cat /var/named/forward.zone | grep pepuppetwindowsbamboodotnet.zippyops.com)' >> /home/BpePdotnet.sh
echo 'pepuppet_dotnet_whostname2=$(cat /var/named/reverse.zone | grep pepuppetwindowsbamboodotnet.zippyops.com)' >> /home/BpePdotnet.sh

echo 'sed -i "/$pepuppet_dotnet_whostname1/d" /var/named/forward.zone' >> /home/BpePdotnet.sh
echo 'sed -i "/$pepuppet_dotnet_whostname2/d" /var/named/reverse.zone' >> /home/BpePdotnet.sh

echo pepuppet_dotnet_windows=$pePuppet_dotnet_windows_ip >> /home/BpePdotnet.sh
echo Rpepuppet_dotnet_windows=$RpePuppet_dotnet_windows_ip >> /home/BpePdotnet.sh

echo 'pepuppet_dotnet_whostname3=$(cat /var/named/forward.zone | grep $pepuppet_dotnet_windows)' >> /home/BpePdotnet.sh
echo 'pepuppet_dotnet_whostname4=$(cat /var/named/reverse.zone | grep $Rpepuppet_dotnet_windows)' >> /home/BpePdotnet.sh

echo 'sed -i "/$pepuppet_dotnet_whostname3/d" /var/named/forward.zone' >> /home/BpePdotnet.sh
echo 'sed -i "/$pepuppet_dotnet_whostname4/d" /var/named/reverse.zone' >> /home/BpePdotnet.sh

echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BpePdotnet.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BpePdotnet.sh

echo "echo pepuppetwindowsbamboodotnet.zippyops.com. IN A $pePuppet_dotnet_windows_ip >> /var/named/forward.zone" >> /home/BpePdotnet.sh
echo "echo $RpePuppet_dotnet_windows_ip.in-addr.arpa. IN PTR pepuppetwindowsbamboodotnet.zippyops.com. >> /var/named/reverse.zone" >> /home/BpePdotnet.sh
echo "service named restart" >> /home/BpePdotnet.sh
echo "rm -rf /home/BpePdotnet.sh" >> /home/BpePdotnet.sh
chmod 755 /home/BpePdotnet.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BpePdotnet.sh root@192.168.1.5:/home/BpePdotnet.sh

rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_dotnet_windows_ip
