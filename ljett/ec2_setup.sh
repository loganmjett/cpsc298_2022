#!/usr/bin/bash
yum update -y
yum install httpd -y
yum install git -y
mkdir /ljcode
cd /ljcode
git clone --branch main https://github.com/loganmjett/cpsc298_2022.git
cp cpsc298_2022/ljett/html/index.html /var/www/html/index.html
service httpd start
chkconfig httpd on
