#!/bin/bash
#set -e 
###########################################################
echo 'packer' | sudo -S echo '-password - solved-'
sudo su
###########################################################

curl -o ./dcos_generate_config.sh https://downloads.dcos.io/dcos/stable/dcos_generate_config.sh

chmod +x ./dcos_generate_config.sh
