#!/bin/bash

echo enter new password
read pass

chpasswd
root:$pass
^d
