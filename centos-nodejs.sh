#!/bin/sh

yum install firewalld -y
systemctl start firewalld
systemctl enable firewalld
firewall-cmd --permanent --zone=public --add-service=http
firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --zone=public --add-port=3000/tcp --permanent
firewall-cmd --zone=public --add-port=3001/tcp --permanent
firewall-cmd --reload
curl -sL https://rpm.nodesource.com/setup_12.x | sudo bash -
yum install nodejs -y
npm install -g pm2

