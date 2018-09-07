# ts
My Develop PC Setup Ansible Playbook

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/223n/ts/blob/master/LICENSE)
[![Build Status](https://travis-ci.com/223n/ts.svg?branch=master)](https://travis-ci.com/223n/ts)

## How to

1. Install Ansible

```shell
cd ./ts/localsetup
sudo ./ansible_setup.sh
```

2. Setup HackMD

```shell
cd ./ts/localsetup
sudo ansible-playbook -i inventory hackmd-playbook.yml
```
