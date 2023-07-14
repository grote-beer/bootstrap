#!/bin/bash
#echo Input server username
#read server_user

#sudo useradd $server_user -m -s /bin/bash

# Create master directory
#mkdir /home/$server_user/server 

# GLOBAL ENV voor de server map
#echo "export CJV_HOME='/home/$server_user/server'" | sudo tee -a /etc/bash.bashrc
#echo "CJV_HOME='/home/$server_user/server'" | sudo tee -a /etc/environment
#source /etc/bash.bashrc

#clone bootstrap git
#cd $CJV_HOME

echo Input Git PAT
read pat

echo Input server naam
read server_naam

git clone "https://$pat@github.com/grote-beer/bootstrap_$server_naam" bootstrap

echo Copy files to filesystem
sudo cp -r bootstrap/root/* /

echo Run server specific script
bash bootstrap/bootstrap.sh

echo Done

echo Removing bootstrap files
rm -rf bootstrap
