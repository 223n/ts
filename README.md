# ts

My Develop PC Setup Ansible Playbook

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/223n/ts/blob/master/LICENSE)
[![Build Status](https://travis-ci.com/223n/ts.svg?branch=master)](https://travis-ci.com/223n/ts)

## How to

### 1. Install Ansible

Install Ansible on the PC.

```shell
cd ./ts/localsetup
sudo ./ansible_setup.sh
```

### 2. Setup HackMD

Install HackMD on the PC.

```shell
cd ./ts/localsetup
sudo ansible-playbook -i inventory hackmd-playbook.yml
```

### 3. Run HackMD

Run HackMD on the PC.

```shell
cd /docker/hackmd
sudo docker-compose up -d
```

* Access URL: http://localhost:3000

### 4. Backup HackMD

Back up the database.

HackMD must be running.

Ref. https://github.com/hackmdio/docker-hackmd#backup

```shell
cd /docker/hackmd
sudo docker-compose exec database pg_dump hackmd -U hackmd > /tmp/backup.sql
```

### 5. Restore HackMD

Restore the database.

HackMD must be running.

Ref. https://github.com/hackmdio/docker-hackmd#restore

```shell
cd /docker/hackmd
cat /tmp/backup.sql | sudo docker exec -i $(sudo docker-compose ps -q database) psql -U hackmd
```
