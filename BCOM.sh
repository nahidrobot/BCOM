#!/bin/bash


clear 
echo"####################################################################"      
echo"               ____   ____ ___  __  __                              "       
echo"              | __ ) / ___/ _ \|  \/  |  Installer Version 2018     "
echo"              |  _ \| |  | | | | |\/| |  BY Nahid Hasan Technology  "
echo"              | |_) | |__| |_| | |  | |  Author: Md.Nahid Hasan     "
echo"              |____/ \____\___/|_|  |_|                             "
echo"####################################################################"
sleep 2

PS3='Please enter your choice: '
options=("Install Wifi Driver" "Show Commands" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Install Wifi Driver")
            echo "After Installing Your Machine is Going to REBOOT"
            apt-get update
apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms
modprobe -r b44 b43 b43legacy ssb brcmsmac bcma
modprobe wl
reboot
            ;;
        "Show Commands")
            echo "apt-get update"
            echo "apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms"
            echo "modprobe -r b44 b43 b43legacy ssb brcmsmac bcma"
            echo "modprobe -r b44 b43 b43legacy ssb brcmsmac bcma"
            echo "modprobe wl"
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
