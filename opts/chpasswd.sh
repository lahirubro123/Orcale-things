#!/bin/sh

echo enter new password
read pass

echo "root:$pass" | sudo chpasswd

passwd -x 9999

echo ""
echo Your password changed to $pass for 9999 days
echo ""
