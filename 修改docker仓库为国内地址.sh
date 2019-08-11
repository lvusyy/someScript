#!/bin/bash
# lvusyy
#
mkdir -p /etc/docker
cat << FFF >> /etc/docker/daemon.json
{"registry-mirrors":["https://docker.mirrors.ustc.edu.cn","https://hub-mirror.c.163.com","https://registry.docker-cn.com"]}
FFF

systemctl restart docker
