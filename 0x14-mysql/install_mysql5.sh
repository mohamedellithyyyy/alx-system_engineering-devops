#!/bin/bash
wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.12-1_all.deb
sudo apt update
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 467B942D3A79BD29
sudo apt update
sudo apt-cache policy mysql-server
sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7* -y
mysql --version
