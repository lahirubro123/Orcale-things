#!/bin/bash -e

rootpw="lahiru98"

cat /etc/ssh/sshd_config | sed "s/PasswordAuthentication no/PasswordAuthentication yes/" | sed "s/#PermitRootLogin yes/PermitRootLogin yes/" > /etc/ssh/sshd_config
echo "
MaxAuthTries 10" >> /etc/ssh/sshd_config



echo root:$rootpw | chpasswd



echo "SELINUX=permissive
SELINUXTYPE=targeted" > /etc/selinux/config
setenforce permissive

sudo reboot
