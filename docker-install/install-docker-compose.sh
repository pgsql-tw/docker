#!/bin/bash
# Tested on Ubuntu 17.04

git clone https://github.com/docker/compose.git
sudo apt install python-pip
cd compose
sudo pip install -r requirements.txt
python setup.py build
sudo python setup.py install
