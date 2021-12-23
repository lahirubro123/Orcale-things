#!/bin/bash

cd /etc/ssh/
rm sshd_config
wget https://raw.githubusercontent.com/chnthkksn/Orcale-things/main/sshd_config
service sshd restart
