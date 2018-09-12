#!/bin/bash -eux
# Ansible Install Script
# Ref.Ansible Documentation
#  http://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#latest-releases-via-apt-debian

echo "1. Add apt line"

source_path="/etc/apt/sources.list.d/ansible.list"
deb_setting="deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main"
echo "${deb_setting}" >${source_path}

echo "2. add key"
apt-get install -y dirmngr
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 93C4A3FD7BB9C367

echo "3. apt-get update"
apt-get update

echo "4. install ansible"
apt-get install -y ansible

echo "5. ansible version"
ansible --version
