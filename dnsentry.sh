#!/bin/bash

BACjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_java_centos_ip
BAUjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_java_ubuntu_ip
BAWjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_java_windows_ip
BACnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_nodejs_centos_ip
BAUnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_nodejs_ubuntu_ip
BAWnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_nodejs_windows_ip
BACphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_php_centos_ip
BAUphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_php_ubuntu_ip
BAWphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_php_windows_ip
BCCjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_java_centos_ip
BCUjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_java_ubuntu_ip
BCWjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_java_windows_ip
BCCnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_nodejs_centos_ip
BCUnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_nodejs_ubuntu_ip
BCWnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_nodejs_windows_ip
BCCphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_php_centos_ip
BCUphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_php_ubuntu_ip
BCWphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_php_windows_ip
BPCjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_java_centos_ip
BPUjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_java_ubuntu_ip
BPWjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_java_windows_ip
BPCnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_nodejs_centos_ip
BPUnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_nodejs_ubuntu_ip
BPWnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_nodejs_windows_ip
BPCphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_php_centos_ip
BPUphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_php_ubuntu_ip
BPWphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_php_windows_ip
BPWdotnet=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Puppet_dotnet_windows_ip
BAWdotnet=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Ansible_dotnet_windows_ip
BCWdotnet=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/Chef_dotnet_windows_ip
BSWdotnet=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_dotnet_windows_ip
BSCjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_java_centos_ip
BSUjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_java_ubuntu_ip
BSWjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_java_windows_ip
BSCphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_php_centos_ip
BSUphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_php_ubuntu_ip
BSWphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_php_windows_ip
BSCnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_nodejs_centos_ip
BSUnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_nodejs_ubuntu_ip
BSWnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/saltstack_nodejs_windows_ip

BACweblogic=/home/centos/workspace/bamboo/webcentos/weblogic_centos_node_ip
BAWweblogic=/home/centos/workspace/bamboo/webwindows/weblogic_windows_node_ip

BpePCjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_java_centos_ip
BpePUjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_java_ubuntu_ip
BpePWjava=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_java_windows_ip

BpePWdotnet=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_dotnet_windows_ip

BpePCnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_nodejs_centos_ip
BpePUnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_nodejs_ubuntu_ip
BpePWnodejs=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_nodejs_windows_ip

BpePCphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_php_centos_ip
BpePUphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_php_ubuntu_ip
BpePWphp=/home/centos/Openstack_Terraform/bamboo_single_terraform_poc_module/pePuppet_php_windows_ip

if [[ -f "$BACjava" && -f "$BAUjava" && -f "$BAWjava" ]]; then
    /root/bamboo/ansible_java.sh

elif [[ -f "$BACnodejs" && -f "$BAUnodejs" && -f "$BAWnodejs" ]]; then
    /root/bamboo/ansible_nodejs.sh

elif [[ -f "$BACphp" && -f "$BAUphp" && -f "$BAWphp" ]]; then
    /root/bamboo/ansible_php.sh

elif [[ -f "$BCCjava" && -f "$BCUjava" && -f "$BCWjava" ]]; then
    /root/bamboo/chef_java.sh

elif [[ -f "$BCCnodejs" && -f "$BCUnodejs" && -f "$BCWnodejs" ]]; then
    /root/bamboo/chef_nodejs.sh

elif [[ -f "$BCCphp" && -f "$BCUphp" && -f "$BCWphp" ]]; then
    /root/bamboo/chef_php.sh

elif [[ -f "$BPCjava" && -f "$BPUjava" && -f "$BPWjava" ]]; then
    /root/bamboo/puppet_java.sh

elif [[ -f "$BPCnodejs" && -f "$BPUnodejs" && -f "$BPWnodejs" ]]; then
    /root/bamboo/puppet_nodejs.sh

elif [[ -f "$BPCphp" && -f "$BPUphp" && -f "$BPWphp" ]]; then
    /root/bamboo/puppet_php.sh

elif [[ -f "$BSCjava" && -f "$BSUjava" && -f "$BSWjava" ]]; then
    /root/bamboo/saltstack_java.sh

elif [[ -f "$BSCnodejs" && -f "$BSUnodejs" && -f "$BSWnodejs" ]]; then
    /root/bamboo/saltstack_nodejs.sh

elif [[ -f "$BSCphp" && -f "$BSUphp" && -f "$BSWphp" ]]; then
    /root/bamboo/saltstack_php.sh

elif [ -f "$BPWdotnet" ]; then
    /root/bamboo/puppet_dotnet.sh

elif [ -f "$BAWdotnet" ]; then
    /root/bamboo/ansible_dotnet.sh

elif [ -f "$BCWdotnet" ]; then
    /root/bamboo/chef_dotnet.sh

elif [ -f "$BSWdotnet" ]; then
    /root/bamboo/saltstack_dotnet.sh

elif [ -f "$BACweblogic" ]; then
    /root/bamboo/ansible_weblogic_centos.sh

elif [ -f "$BAWweblogic" ]; then
    /root/bamboo/ansible_weblogic_windows.sh

elif [[ -f "$BpePCjava" && -f "$BpePUjava" && -f "$BpePWjava" ]]; then
    /root/bamboo/pepuppet_java.sh

elif [ -f "$BpePWdotnet" ]; then
    /root/bamboo/pepuppet_dotnet.sh

elif [[ -f "$BpePCnodejs" && -f "$BpePUnodejs" && -f "$BpePWnodejs" ]]; then
    /root/bamboo/pepuppet_nodejs.sh

elif [[ -f "$BpePCphp" && -f "$BpePUphp" && -f "$BpePWphp" ]]; then
    /root/bamboo/pepuppet_php.sh

fi
