#!/bin/bash
 yum remove docker docker-common docker-selinux docker-engine -y
 yum install -y yum-utils device-mapper-persistent-data lvm2
 curl -o /etc/yum.repos.d/docker-ce.repo https://download.docker.com/linux/centos/docker-ce.repo
 sed -i 's+download.docker.com+mirrors.tuna.tsinghua.edu.cn/docker-ce+' /etc/yum.repos.d/docker-ce.repo

yum makecache  
yum install docker-ce -y





#其他系统
#https://mirrors.tuna.tsinghua.edu.cn/help/docker-ce/
