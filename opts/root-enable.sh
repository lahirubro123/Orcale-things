#!/bin/bash

echo""
echo"Locating crontab directory"
cd /etc/ssh/
echo""

echo""
echo"Deleting default corntab config"
rm sshd_config
echo""

echo ""
echo"Downloding modified crontab config"
echo ""
wget https://raw.githubusercontent.com/chnthkksn/Orcale-things/main/opts/sshd_config


echo ""
echo "Restarting sshd service"
service sshd restart
echo ""
