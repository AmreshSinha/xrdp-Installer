#!/bin/bash
sudo apt update
sudo apt upgrade
read -p $'\033[1;32m [xrdpBOY] To start Installation type Y/y or to cancel type N/n [Dont press Enter after it]?' -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi
sudo apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils
sudo apt install xrdp
sudo systemctl status xrdp
sudo adduser xrdp ssl-cert
sudo systemctl status xrdp
