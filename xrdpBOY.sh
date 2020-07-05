#!/bin/bash
read -p "xrdpBOY||Just an another script! || Automates xrdp with xfce installation ||" -n 1 -r
read -p "!Run with "sudo" command to avoid any errors!" -n 1 -r
read -p "It is going to take time! Around 5~10 minutes! It can be 1~2 minutes too depending on the server spec!" -n 1 -r
read -p "To Begin Installation type Y/y and to cancel type N/n" -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi
sudo apt update
sudo apt upgrade
sudo apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils
sudo apt install xrdp
sudo systemctl status xrdp
sudo adduser xrdp ssl-cert
