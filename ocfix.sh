#!/bin/bash

echo -e "ATTENTION!!"
echo " "
echo -e "This password will be used to log into your server."
echo -e "Enter Your New Password to Continue...!"
read  -p : pass
(echo $pass; echo $pass)|passwd 2>/dev/null
sleep 1s
echo -e "\033[1;31mPASSWORD CHANGED SUCCESSFULLY!\033[0m"
sleep 5s
cd
clear

echo ""
echo "Locating sshd directory"
sleep 3s
echo ""
cd /etc/ssh/

echo ""
echo "Deleting default sshd config"
sleep 3s
echo ""
rm sshd_config

echo ""
echo "Downloding modified sshd config"
echo ""
wget https://raw.githubusercontent.com/lahirubro123/rootpw-generator/main/opts/sshd_config


echo ""
echo "Restarting sshd service"
service sshd restart
sleep 5s
echo "sshd service restarting !"

echo "Installing Crobtab"
sleep 3s
apt-get update && apt-get upgrade
apt-get install cron
echo "Locating crontab directory"
sleep 3s
cd /var/spool/cron/crontabs
echo ""

echo ""
echo "Deleting default corntab config"
sleep 3s
rm root
echo ""

echo ""
echo "Downloding modified crontab config"
sleep 3s
echo ""
wget https://raw.githubusercontent.com/chnthkksn/Orcale-things/main/opts/root

echo ""
echo "Setup completed successfully"
sleep 3s
echo ""



