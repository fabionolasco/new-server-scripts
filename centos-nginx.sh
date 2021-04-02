#!/bin/sh

yum install epel-release yum-utils -y
yum install nginx -y
systemctl start nginx
systemctl enable nginx
yum install firewalld -y
systemctl start firewalld
systemctl enable firewalld
firewall-cmd --permanent --zone=public --add-service=http
firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --zone=public --add-port=3000/tcp --permanent
firewall-cmd --zone=public --add-port=3001/tcp --permanent
firewall-cmd --reload

# /usr/share/nginx/html

