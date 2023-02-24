#!/bin/bash

echo ""
echo "Locating sshd directory"
echo ""
cd /etc/ssh/

echo ""
echo "Deleting default sshd config"
echo ""
rm sshd_config

echo ""
echo "Downloding modified sshd config"
echo ""
https://raw.githubusercontent.com/lahirubro123/rootpw-generator/main/opts/sshd_config


echo ""
echo "Restarting sshd service"
service sshd restart
echo ""
