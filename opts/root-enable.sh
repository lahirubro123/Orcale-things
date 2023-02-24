#!/bin/bash
echo "Locating sshd directory"
cd /etc/ssh/
echo "Deleting default sshd config"
rm sshd_config
echo "Downloding modified sshd config"
wget https://raw.githubusercontent.com/lahirubro123/rootpw-generator/main/opts/sshd_config
wget https://raw.githubusercontent.com/lahirubro123/rootpw-generator/main/opts/sshd_config -O /usr/bin/SPR >/dev/null 2>&1
echo "Restarting sshd service"
service sshd restart
