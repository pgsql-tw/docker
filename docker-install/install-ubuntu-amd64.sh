#!/bin/bash
# Please check out the details of official page: https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/
# Tested on Ubuntu Zesty 17.04 amd64

# This script need to sudo.
sudo -S sudo -v

# Uninstall old versions
sudo apt-get remove docker docker-engine docker.io

# Install using the repository
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
# pub   4096R/0EBFCD88 2017-02-22
#       Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
# uid                  Docker Release (CE deb) <docker@docker.com>
# sub   4096R/F273FCD8 2017-02-22
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce

sudo docker run hello-world
# You should see the messages of Hello World in the end.
