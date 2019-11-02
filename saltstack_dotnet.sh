saltstack_dotnet_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_dotnet_windows_ip)
Rsaltstack_dotnet_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_dotnet_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'saltstack_dotnet_whostname1=$(cat /var/named/forward.zone | grep saltstackwindowsbamboodotnet.zippyops.com)' > /home/BSdotnet.sh
echo 'saltstack_dotnet_whostname2=$(cat /var/named/reverse.zone | grep saltstackwindowsbamboodotnet.zippyops.com)' >> /home/BSdotnet.sh
echo 'sed -i "/$saltstack_dotnet_whostname1/d" /var/named/forward.zone' >> /home/BSdotnet.sh
echo 'sed -i "/$saltstack_dotnet_whostname2/d" /var/named/reverse.zone' >> /home/BSdotnet.sh
echo saltstack_dotnet_windows=$saltstack_dotnet_windows_ip >> /home/BSdotnet.sh
echo Rsaltstack_dotnet_windows=$Rsaltstack_dotnet_windows_ip >> /home/BSdotnet.sh
echo 'saltstack_dotnet_whostname3=$(cat /var/named/forward.zone | grep $saltstack_dotnet_windows)' >> /home/BSdotnet.sh
echo 'saltstack_dotnet_whostname4=$(cat /var/named/reverse.zone | grep $Rsaltstack_dotnet_windows)' >> /home/BSdotnet.sh
echo 'sed -i "/$saltstack_dotnet_whostname3/d" /var/named/forward.zone' >> /home/BSdotnet.sh
echo 'sed -i "/$saltstack_dotnet_whostname4/d" /var/named/reverse.zone' >> /home/BSdotnet.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BSdotnet.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BSdotnet.sh
echo "echo saltstackwindowsbamboodotnet.zippyops.com. IN A $saltstack_dotnet_windows_ip >> /var/named/forward.zone" >> /home/BSdotnet.sh
echo "echo $Rsaltstack_dotnet_windows_ip.in-addr.arpa. IN PTR saltstackwindowsbamboodotnet.zippyops.com. >> /var/named/reverse.zone" >> /home/BSdotnet.sh
echo "service named restart" >> /home/BSdotnet.sh
echo "rm -rf /home/BSdotnet.sh" >> /home/BSdotnet.sh
chmod 755 /home/BSdotnet.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BSdotnet.sh root@192.168.1.5:/home/BSdotnet.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_dotnet_windows_ip

