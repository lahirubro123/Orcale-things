#!/bin/bash -e

rootpw="lahiru1998"

cat /etc/ssh/sshd_config | sed "s/PasswordAuthentication no/PasswordAuthentication yes/" | sed "s/#PermitRootLogin yes/PermitRootLogin yes/" > /etc/ssh/sshd_config
echo "
MaxAuthTries 10" >> /etc/ssh/sshd_config


service sshd restart

echo root:$rootpw | chpasswd

yum install yum-cron nano -y
cat /etc/yum/yum-cron.conf | sed "s/apply_updates = no/apply_updates = yes/" > /etc/yum/yum-cron.conf
systemctl restart yum-cron

echo "SELINUX=permissive
SELINUXTYPE=targeted" > /etc/selinux/config
setenforce permissive
