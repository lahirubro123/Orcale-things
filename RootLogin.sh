#!/bin/bash


apt-get update && apt-get upgrade
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/PasswordAuthentication prohibit-password/PasswordAuthentication yes/' /etc/ssh/sshd_config

sudo -i

sed -i 's/PermitRootLogin no/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/PubkeyAuthentication yes/PubkeyAuthentication no/' /etc/ssh/sshd_config

sudo service ssh restart
sudo service sshd restart
sudo passwd root
