Puppet_php_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_php_centos_ip)
RPuppet_php_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_php_centos_ip | perl -lne 'print join ".", reverse split/\./;')
Puppet_php_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_php_ubuntu_ip)
RPuppet_php_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_php_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
Puppet_php_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_php_windows_ip)
RPuppet_php_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_php_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'puppet_php_chostname1=$(cat /var/named/forward.zone | grep puppetcentosbamboophp.zippyops.com)' > /home/BPphp.sh
echo 'puppet_php_chostname2=$(cat /var/named/reverse.zone | grep puppetcentosbamboophp.zippyops.com)' >> /home/BPphp.sh
echo 'puppet_php_uhostname1=$(cat /var/named/forward.zone | grep puppetubuntubamboophp.zippyops.com)' >> /home/BPphp.sh
echo 'puppet_php_uhostname2=$(cat /var/named/reverse.zone | grep puppetubuntubamboophp.zippyops.com)' >> /home/BPphp.sh
echo 'puppet_php_whostname1=$(cat /var/named/forward.zone | grep puppetwindowsbamboophp.zippyops.com)' >> /home/BPphp.sh
echo 'puppet_php_whostname2=$(cat /var/named/reverse.zone | grep puppetwindowsbamboophp.zippyops.com)' >> /home/BPphp.sh
echo 'sed -i "/$puppet_php_chostname1/d" /var/named/forward.zone' >> /home/BPphp.sh
echo 'sed -i "/$puppet_php_chostname2/d" /var/named/reverse.zone' >> /home/BPphp.sh
echo 'sed -i "/$puppet_php_uhostname1/d" /var/named/forward.zone' >> /home/BPphp.sh
echo 'sed -i "/$puppet_php_uhostname2/d" /var/named/reverse.zone' >> /home/BPphp.sh
echo 'sed -i "/$puppet_php_whostname1/d" /var/named/forward.zone' >> /home/BPphp.sh
echo 'sed -i "/$puppet_php_whostname2/d" /var/named/reverse.zone' >> /home/BPphp.sh
echo Puppet_php_centos=$Puppet_php_centos_ip >> /home/BPphp.sh
echo RPuppet_php_centos=$RPuppet_php_centos_ip >> /home/BPphp.sh
echo Puppet_php_ubuntu=$Puppet_php_ubuntu_ip >> /home/BPphp.sh
echo RPuppet_php_ubuntu=$RPuppet_php_ubuntu_ip >> /home/BPphp.sh
echo Puppet_php_windows=$Puppet_php_windows_ip >> /home/BPphp.sh
echo Rpuppet_php_windows=$RPuppet_php_windows_ip >> /home/BPphp.sh
echo 'puppet_php_chostname3=$(cat /var/named/forward.zone | grep $Puppet_php_centos)' >> /home/BPphp.sh
echo 'puppet_php_chostname4=$(cat /var/named/reverse.zone | grep $RPuppet_php_centos)' >> /home/BPphp.sh
echo 'puppet_php_uhostname3=$(cat /var/named/forward.zone | grep $Puppet_php_ubuntu)' >> /home/BPphp.sh
echo 'puppet_php_uhostname4=$(cat /var/named/reverse.zone | grep $RPuppet_php_ubuntu)' >> /home/BPphp.sh
echo 'puppet_php_whostname3=$(cat /var/named/forward.zone | grep $Puppet_php_windows)' >> /home/BPphp.sh
echo 'puppet_php_whostname4=$(cat /var/named/reverse.zone | grep $RPuppet_php_windows)' >> /home/BPphp.sh
echo 'sed -i "/$puppet_php_chostname3/d" /var/named/forward.zone' >> /home/BPphp.sh
echo 'sed -i "/$puppet_php_chostname4/d" /var/named/reverse.zone' >> /home/BPphp.sh
echo 'sed -i "/$puppet_php_uhostname3/d" /var/named/forward.zone' >> /home/BPphp.sh
echo 'sed -i "/$puppet_php_uhostname4/d" /var/named/reverse.zone' >> /home/BPphp.sh
echo 'sed -i "/$puppet_php_whostname3/d" /var/named/forward.zone' >> /home/BPphp.sh
echo 'sed -i "/$puppet_php_whostname4/d" /var/named/reverse.zone' >> /home/BPphp.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BPphp.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BPphp.sh
echo "echo puppetcentosbamboophp.zippyops.com. IN A $Puppet_php_centos_ip >> /var/named/forward.zone" >> /home/BPphp.sh
echo "echo $RPuppet_php_centos_ip.in-addr.arpa. IN PTR puppetcentosbamboophp.zippyops.com. >> /var/named/reverse.zone" >> /home/BPphp.sh
echo "echo puppetubuntubamboophp.zippyops.com. IN A $Puppet_php_ubuntu_ip >> /var/named/forward.zone" >> /home/BPphp.sh
echo "echo $RPuppet_php_ubuntu_ip.in-addr.arpa. IN PTR puppetubuntubamboophp.zippyops.com. >> /var/named/reverse.zone" >> /home/BPphp.sh
echo "echo puppetwindowsbamboophp.zippyops.com. IN A $Puppet_php_windows_ip >> /var/named/forward.zone" >> /home/BPphp.sh
echo "echo $RPuppet_php_windows_ip.in-addr.arpa. IN PTR puppetwindowsbamboophp.zippyops.com. >> /var/named/reverse.zone" >> /home/BPphp.sh
echo "service named restart" >> /home/BPphp.sh
echo "rm -rf /home/BPphp.sh" >> /home/BPphp.sh
chmod 755 /home/BPphp.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BPphp.sh root@192.168.1.5:/home/BPphp.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_php_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_php_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_php_windows_ip

