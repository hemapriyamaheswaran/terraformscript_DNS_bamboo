Chef_dotnet_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_dotnet_windows_ip)
RChef_dotnet_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_dotnet_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'chef_dotnet_whostname1=$(cat /var/named/forward.zone | grep bamboochefwindowsdotnet.zippyops.com)' > /home/BCdotnet.sh
echo 'chef_dotnet_whostname2=$(cat /var/named/reverse.zone | grep bamboochefwindowsdotnet.zippyops.com)' >> /home/BCdotnet.sh
echo 'sed -i "/$chef_dotnet_whostname1/d" /var/named/forward.zone' >> /home/BCdotnet.sh
echo 'sed -i "/$chef_dotnet_whostname2/d" /var/named/reverse.zone' >> /home/BCdotnet.sh
echo Chef_dotnet_windows=$Chef_dotnet_windows_ip >> /home/BCdotnet.sh
echo RChef_dotnet_windows=$RChef_dotnet_windows_ip >> /home/BCdotnet.sh
echo 'chef_dotnet_whostname3=$(cat /var/named/forward.zone | grep $Chef_dotnet_windows)' >> /home/BCdotnet.sh
echo 'chef_dotnet_whostname4=$(cat /var/named/reverse.zone | grep $RChef_dotnet_windows)' >> /home/BCdotnet.sh
echo 'sed -i "/$chef_dotnet_whostname3/d" /var/named/forward.zone' >> /home/BCdotnet.sh
echo 'sed -i "/$chef_dotnet_whostname4/d" /var/named/reverse.zone' >> /home/BCdotnet.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BCdotnet.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BCdotnet.sh
echo "echo bamboochefwindowsdotnet.zippyops.com. IN A $Chef_dotnet_windows_ip >> /var/named/forward.zone" >> /home/BCdotnet.sh
echo "echo $RChef_dotnet_windows_ip.in-addr.arpa. IN PTR bamboochefwindowsdotnet.zippyops.com. >> /var/named/reverse.zone" >> /home/BCdotnet.sh
echo "service named restart" >> /home/BCdotnet.sh
echo "rm -rf /home/BCdotnet.sh" >> /home/BCdotnet.sh
chmod 755 /home/BCdotnet.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BCdotnet.sh root@192.168.1.5:/home/BCdotnet.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_dotnet_windows_ip
