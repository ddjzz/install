#!/bin/bash


sudo add-apt-repository ppa:freenx-team
sudo apt-get update

sudo apt-get install -y freenx

sudo cp nxsetup /usr/lib/nx 

sudo /usr/lib/nx/nxsetup --install --setup-nomachine-key

sudo echo -e "\n#Use unity 2d for client sessions\nCOMMAND_START_GNOME='gnome-session --session=ubuntu-2d'" | sudo tee -a /etc/nxserver/node.conf


sudo /etc/init.d/freenx-server restart


