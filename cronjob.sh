#!/bin/bash

echo""
echo"Locating crontab directory"
echo""
cd /var/spool/cron/crontabs
echo""
echo"Deleting default corntab config"
echo""
rm root
echo""
echo"Downloding modified crontab config""
echo ""
wget https://raw.githubusercontent.com/chnthkksn/Orcale-things/main/root
echo ""
echo "Setup completed successfully"
echo""
