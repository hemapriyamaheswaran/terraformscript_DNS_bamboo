Puppet_java_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_java_centos_ip)
RPuppet_java_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_java_centos_ip | perl -lne 'print join ".", reverse split/\./;')
Puppet_java_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_java_ubuntu_ip)
RPuppet_java_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_java_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
Puppet_java_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_java_windows_ip)
RPuppet_java_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_java_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'puppet_java_chostname1=$(cat /var/named/forward.zone | grep puppetcentosbamboojava.zippyops.com)' > /home/BPjava.sh
echo 'puppet_java_chostname2=$(cat /var/named/reverse.zone | grep puppetcentosbamboojava.zippyops.com)' >> /home/BPjava.sh
echo 'puppet_java_uhostname1=$(cat /var/named/forward.zone | grep puppetubuntubamboojava.zippyops.com)' >> /home/BPjava.sh
echo 'puppet_java_uhostname2=$(cat /var/named/reverse.zone | grep puppetubuntubamboojava.zippyops.com)' >> /home/BPjava.sh
echo 'puppet_java_whostname1=$(cat /var/named/forward.zone | grep puppetwindowsbamboojava.zippyops.com)' >> /home/BPjava.sh
echo 'puppet_java_whostname2=$(cat /var/named/reverse.zone | grep puppetwindowsbamboojava.zippyops.com)' >> /home/BPjava.sh
echo 'sed -i "/$puppet_java_chostname1/d" /var/named/forward.zone' >> /home/BPjava.sh
echo 'sed -i "/$puppet_java_chostname2/d" /var/named/reverse.zone' >> /home/BPjava.sh
echo 'sed -i "/$puppet_java_uhostname1/d" /var/named/forward.zone' >> /home/BPjava.sh
echo 'sed -i "/$puppet_java_uhostname2/d" /var/named/reverse.zone' >> /home/BPjava.sh
echo 'sed -i "/$puppet_java_whostname1/d" /var/named/forward.zone' >> /home/BPjava.sh
echo 'sed -i "/$puppet_java_whostname2/d" /var/named/reverse.zone' >> /home/BPjava.sh
echo Puppet_java_centos=$Puppet_java_centos_ip >> /home/BPjava.sh
echo RPuppet_java_centos=$RPuppet_java_centos_ip >> /home/BPjava.sh
echo Puppet_java_ubuntu=$Puppet_java_ubuntu_ip >> /home/BPjava.sh
echo RPuppet_java_ubuntu=$RPuppet_java_ubuntu_ip >> /home/BPjava.sh
echo Puppet_java_windows=$Puppet_java_windows_ip >> /home/BPjava.sh
echo RPuppet_java_windows=$RPuppet_java_windows_ip >> /home/BPjava.sh
echo 'puppet_java_chostname3=$(cat /var/named/forward.zone | grep $Puppet_java_centos)' >> /home/BPjava.sh
echo 'puppet_java_chostname4=$(cat /var/named/reverse.zone | grep $RPuppet_java_centos)' >> /home/BPjava.sh
echo 'puppet_java_uhostname3=$(cat /var/named/forward.zone | grep $Puppet_java_ubuntu)' >> /home/BPjava.sh
echo 'puppet_java_uhostname4=$(cat /var/named/reverse.zone | grep $RPuppet_java_ubuntu)' >> /home/BPjava.sh
echo 'puppet_java_whostname3=$(cat /var/named/forward.zone | grep $Puppet_java_windows)' >> /home/BPjava.sh
echo 'puppet_java_whostname4=$(cat /var/named/reverse.zone | grep $RPuppet_java_windows)' >> /home/BPjava.sh
echo 'sed -i "/$puppet_java_chostname3/d" /var/named/forward.zone' >> /home/BPjava.sh
echo 'sed -i "/$puppet_java_chostname4/d" /var/named/reverse.zone' >> /home/BPjava.sh
echo 'sed -i "/$puppet_java_uhostname3/d" /var/named/forward.zone' >> /home/BPjava.sh
echo 'sed -i "/$puppet_java_uhostname4/d" /var/named/reverse.zone' >> /home/BPjava.sh
echo 'sed -i "/$puppet_java_whostname3/d" /var/named/forward.zone' >> /home/BPjava.sh
echo 'sed -i "/$puppet_java_whostname4/d" /var/named/reverse.zone' >> /home/BPjava.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BPjava.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BPjava.sh
echo "echo puppetcentosbamboojava.zippyops.com. IN A $Puppet_java_centos_ip >> /var/named/forward.zone" >> /home/BPjava.sh
echo "echo $RPuppet_java_centos_ip.in-addr.arpa. IN PTR puppetcentosbamboojava.zippyops.com. >> /var/named/reverse.zone" >> /home/BPjava.sh
echo "echo puppetubuntubamboojava.zippyops.com. IN A $Puppet_java_ubuntu_ip >> /var/named/forward.zone" >> /home/BPjava.sh
echo "echo $RPuppet_java_ubuntu_ip.in-addr.arpa. IN PTR puppetubuntubamboojava.zippyops.com. >> /var/named/reverse.zone" >> /home/BPjava.sh
echo "echo puppetwindowsbamboojava.zippyops.com. IN A $Puppet_java_windows_ip >> /var/named/forward.zone" >> /home/BPjava.sh
echo "echo $RPuppet_java_windows_ip.in-addr.arpa. IN PTR puppetwindowsbamboojava.zippyops.com. >> /var/named/reverse.zone" >> /home/BPjava.sh
echo "service named restart" >> /home/BPjava.sh
echo "rm -rf /home/BPjava.sh" >> /home/BPjava.sh
chmod 755 /home/BPjava.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BPjava.sh root@192.168.1.5:/home/BPjava.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_java_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_java_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_java_windows_ip

