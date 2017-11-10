#!/bin/bash
#set -e 
@Echo off
###########################################################
echo 'packer' | sudo -S echo '-password - solved-'
sudo su
###########################################################

wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins

cat /var/log/jenkins/jenkins.log