#!/bin/bash
#set -e 
###########################################################
echo 'packer' | sudo -S echo '-password - solved-'
sudo su
###########################################################

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    wget \
    htop \
    mc \
    nano \
    net-tools \
    software-properties-common

#ctop
sudo wget https://github.com/bcicen/ctop/releases/download/v0.6.1/ctop-0.6.1-linux-amd64 -O /usr/local/bin/ctop
sudo chmod +x /usr/local/bin/ctop    