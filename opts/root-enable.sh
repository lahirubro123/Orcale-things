#!/bin/bash

echo ""
echo "Locating crontab directory"
echo ""
cd /etc/ssh/

echo ""
echo "Deleting default corntab config"
echo ""
rm sshd_config

echo ""
echo "Downloding modified crontab config"
echo ""
wget https://raw.githubusercontent.com/chnthkksn/Orcale-things/main/opts/sshd_config


echo ""
echo "Restarting sshd service"
service sshd restart
echo ""
