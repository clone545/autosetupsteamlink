#!/bin/bash

#Install Steamlink
sudo apt-get update && sudo apt-get install steamlink -y 

#Set Steamlink to autostart
echo -n "Steamlink" >> ~/.config/lxsession/LXDE-${USER}/autostart

#Install and set up the fan shim
git clone https://github.com/pimoroni/fanshim-python ~
sudo ~/fanshim-python/install.sh
sudo ~/fanshim-python/examples/install-service.sh --on-threshold 65 --off-threshold 55 --delay 2