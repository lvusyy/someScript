#!/bin/bash
# lvusyy
#

cat << FFF >> /etc/docker/daemon.json
{
  "registry-mirrors" : [
    "http://docker.mirrors.ustc.edu.cn",
    "http://hub-mirror.c.163.com",
    "registry.docker-cn.com"
  ],
  "insecure-registries" : [
    "registry.docker-cn.com",
    "docker.mirrors.ustc.edu.cn"
  ],
  "debug" : true,
  "experimental" : true
}
FFF

systemctl restart docker
