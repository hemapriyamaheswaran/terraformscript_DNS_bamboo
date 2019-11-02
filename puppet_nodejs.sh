Puppet_nodejs_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_nodejs_centos_ip)
RPuppet_nodejs_centos_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_nodejs_centos_ip | perl -lne 'print join ".", reverse split/\./;')
Puppet_nodejs_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_nodejs_ubuntu_ip)
RPuppet_nodejs_ubuntu_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_nodejs_ubuntu_ip | perl -lne 'print join ".", reverse split/\./;')
Puppet_nodejs_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_nodejs_windows_ip)
RPuppet_nodejs_windows_ip=$(cat /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_nodejs_windows_ip | perl -lne 'print join ".", reverse split/\./;')
echo 'puppet_nodejs_chostname1=$(cat /var/named/forward.zone | grep puppetcentosbamboonodejs.zippyops.com)' > /home/BPnodejs.sh
echo 'puppet_nodejs_chostname2=$(cat /var/named/reverse.zone | grep puppetcentosbamboonodejs.zippyops.com)' >> /home/BPnodejs.sh
echo 'puppet_nodejs_uhostname1=$(cat /var/named/forward.zone | grep puppetubuntubamboonodejs.zippyops.com)' >> /home/BPnodejs.sh
echo 'puppet_nodejs_uhostname2=$(cat /var/named/reverse.zone | grep puppetubuntubamboonodejs.zippyops.com)' >> /home/BPnodejs.sh
echo 'puppet_nodejs_whostname1=$(cat /var/named/forward.zone | grep puppetwindowsbamboonodejs.zippyops.com)' >> /home/BPnodejs.sh
echo 'puppet_nodejs_whostname2=$(cat /var/named/reverse.zone | grep puppetwindowsbamboonodejs.zippyops.com)' >> /home/BPnodejs.sh
echo 'sed -i "/$puppet_nodejs_chostname1/d" /var/named/forward.zone' >> /home/BPnodejs.sh
echo 'sed -i "/$puppet_nodejs_chostname2/d" /var/named/reverse.zone' >> /home/BPnodejs.sh
echo 'sed -i "/$puppet_nodejs_uhostname1/d" /var/named/forward.zone' >> /home/BPnodejs.sh
echo 'sed -i "/$puppet_nodejs_uhostname2/d" /var/named/reverse.zone' >> /home/BPnodejs.sh
echo 'sed -i "/$puppet_nodejs_whostname1/d" /var/named/forward.zone' >> /home/BPnodejs.sh
echo 'sed -i "/$puppet_nodejs_whostname2/d" /var/named/reverse.zone' >> /home/BPnodejs.sh
echo Puppet_nodejs_centos=$Puppet_nodejs_centos_ip >> /home/BPnodejs.sh
echo RPuppet_nodejs_centos=$RPuppet_nodejs_centos_ip >> /home/BPnodejs.sh
echo Puppet_nodejs_ubuntu=$Puppet_nodejs_ubuntu_ip >> /home/BPnodejs.sh
echo RPuppet_nodejs_ubuntu=$RPuppet_nodejs_ubuntu_ip >> /home/BPnodejs.sh
echo Puppet_nodejs_windows=$Puppet_nodejs_windows_ip >> /home/BPnodejs.sh
echo RPuppet_nodejs_windows=$RPuppet_nodejs_windows_ip >> /home/BPnodejs.sh
echo 'puppet_nodejs_chostname3=$(cat /var/named/forward.zone | grep $Puppet_nodejs_centos)' >> /home/BPnodejs.sh
echo 'puppet_nodejs_chostname4=$(cat /var/named/reverse.zone | grep $RPuppet_nodejs_centos)' >> /home/BPnodejs.sh
echo 'puppet_nodejs_uhostname3=$(cat /var/named/forward.zone | grep $Puppet_nodejs_ubuntu)' >> /home/BPnodejs.sh
echo 'puppet_nodejs_uhostname4=$(cat /var/named/reverse.zone | grep $RPuppet_nodejs_ubuntu)' >> /home/BPnodejs.sh
echo 'puppet_nodejs_whostname3=$(cat /var/named/forward.zone | grep $Puppet_nodejs_windows)' >> /home/BPnodejs.sh
echo 'puppet_nodejs_whostname4=$(cat /var/named/reverse.zone | grep $RPuppet_nodejs_windows)' >> /home/BPnodejs.sh
echo 'sed -i "/$puppet_nodejs_chostname3/d" /var/named/forward.zone' >> /home/BPnodejs.sh
echo 'sed -i "/$puppet_nodejs_chostname4/d" /var/named/reverse.zone' >> /home/BPnodejs.sh
echo 'sed -i "/$puppet_nodejs_uhostname3/d" /var/named/forward.zone' >> /home/BPnodejs.sh
echo 'sed -i "/$puppet_nodejs_uhostname4/d" /var/named/reverse.zone' >> /home/BPnodejs.sh
echo 'sed -i "/$puppet_nodejs_whostname3/d" /var/named/forward.zone' >> /home/BPnodejs.sh
echo 'sed -i "/$puppet_nodejs_whostname4/d" /var/named/reverse.zone' >> /home/BPnodejs.sh
echo "sed -i '/^$/d' /var/named/forward.zone" >> /home/BPnodejs.sh
echo "sed -i '/^$/d' /var/named/reverse.zone" >> /home/BPnodejs.sh
echo "echo puppetcentosbamboonodejs.zippyops.com. IN A $Puppet_nodejs_centos_ip >> /var/named/forward.zone" >> /home/BPnodejs.sh
echo "echo $RPuppet_nodejs_centos_ip.in-addr.arpa. IN PTR puppetcentosbamboonodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BPnodejs.sh
echo "echo puppetubuntubamboonodejs.zippyops.com. IN A $Puppet_nodejs_ubuntu_ip >> /var/named/forward.zone" >> /home/BPnodejs.sh
echo "echo $RPuppet_nodejs_ubuntu_ip.in-addr.arpa. IN PTR puppetubuntubamboonodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BPnodejs.sh
echo "echo puppetwindowsbamboonodejs.zippyops.com. IN A $Puppet_nodejs_windows_ip >> /var/named/forward.zone" >> /home/BPnodejs.sh
echo "echo $RPuppet_nodejs_windows_ip.in-addr.arpa. IN PTR puppetwindowsbamboonodejs.zippyops.com. >> /var/named/reverse.zone" >> /home/BPnodejs.sh
echo "service named restart" >> /home/BPnodejs.sh
echo "rm -rf /home/BPnodejs.sh" >> /home/BPnodejs.sh
chmod 755 /home/BPnodejs.sh
sshpass -p 'password' scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no /home/BPnodejs.sh root@192.168.1.5:/home/BPnodejs.sh
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_nodejs_centos_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_nodejs_ubuntu_ip
rm -rf /home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_nodejs_windows_ip

