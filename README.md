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

3. Run HackMD

```shell
cd /docker/hackmd
sudo docker-compose up
```

or

```shell
cd /docker/hackmd
sudo docker-compose up -d
```

4. Backup HackMD

Ref. https://github.com/hackmdio/docker-hackmd#backup

```shell
cd /docker/hackmd
sudo docker-compose exec database pg_dump hackmd -U hackmd > /tmp/backup.sql
```

5. Restore HackMD

Ref. https://github.com/hackmdio/docker-hackmd#restore

```shell
cd /docker/hackmd
cat /tmp/backup.sql | sudo docker exec -i $(sudo docker-compose ps -q database) psql -U hackmd
```
