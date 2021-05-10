#!/bin/bash

echo "username: ";
read USR;
if USR "$1" &>/dev/null; then
	echo "user exists"
else
useradd -d /home/$USR/ -m $USR && echo "Success!";
fi
echo "Enter public key: ";
read id_rsa.pub;
mkdir /home/$USR/.ssh;
nano /home/$USR/.ssh/authorized_keys;
