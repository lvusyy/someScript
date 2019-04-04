#!/bin/bash
# huaweiYun download mysql rpm package
# by: nsd1811 lvusyy
rm -f mysqlrpms.txt
cat > mysqlrpms.txt << EOF
mysql-community-client-5.7.25-1.el7.x86_64.rpm
mysql-community-common-5.7.25-1.el7.x86_64.rpm
mysql-community-devel-5.7.25-1.el7.x86_64.rpm
mysql-community-embedded-5.7.25-1.el7.x86_64.rpm
mysql-community-embedded-compat-5.7.25-1.el7.x86_64.rpm
mysql-community-embedded-devel-5.7.25-1.el7.x86_64.rpm
mysql-community-libs-5.7.25-1.el7.x86_64.rpm
mysql-community-libs-compat-5.7.25-1.el7.x86_64.rpm
mysql-community-server-5.7.25-1.el7.x86_64.rpm
mysql-community-test-5.7.25-1.el7.x86_64.rpm

EOF
sleep 0.8
echo "准备下载rpm包"
for i in `cat mysqlrpms.txt` ; do wget https://mirrors.ustc.edu.cn/mysql-ftp/Downloads/MySQL-5.7/${i} ;done
echo "rpm包下载完成. 准备清理不必要文件"
rm -f mysqlrpms.txt
rm $0
