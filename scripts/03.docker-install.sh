#!/bin/bash
#set -e 
###########################################################
echo 'packer' | sudo -S echo '-password - solved-'
sudo su
###########################################################

mkdir /docker/
chmod 7777 /docker/

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \    
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#dynamic does not work on 17.10
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#Force 16.* packages
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"

sudo apt-get update

sudo apt-get install docker-ce -y

sudo docker run --rm hello-world
sudo docker image rm $(docker image ls -q)

sudo usermod -aG docker packer

#Install Rancher 2.0
#sudo docker run -d --restart=unless-stopped -p 8080:8080 rancher/server:preview