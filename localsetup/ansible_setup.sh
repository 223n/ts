#!/bin/bash -eux
# Ansible Install Script
# Ref.Ansible Documentation
#  http://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#latest-releases-via-apt-debian

echo "1. Check sources.list"

source_path="/etc/apt/sources.list"
deb_setting="deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main"
grep_result=$(grep "${deb_setting}" "${source_path}")
if [ -n "${grep_result}" ]; then
    echo "> already inserted source."
else
    echo "> insert source."
    echo -e "\n${deb_setting}" >> "${source_path}"
fi

echo "2. add key"
apt-get install -y dirmngr
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367

echo "3. apt-get update"
apt-get update

echo "4. install ansible"
apt-get install -y ansible

echo "5. ansible version"
ansible --version
