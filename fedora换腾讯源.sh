#!/bin/bash
mv /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo.backup
mv /etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo.backup
#rm /etc/yum.repos.d/*.repo
curl -o /etc/yum.repos.d/fedora.repo http://mirrors.cloud.tencent.com/repo/fedora.repo
curl -o /etc/yum.repos.d/fedora-updates.repo http://mirrors.cloud.tencent.com/repo/fedora-updates.repo

dnf makecache

#清华大学的fedora源
#https://mirrors.tuna.tsinghua.edu.cn/help/fedora/ 
