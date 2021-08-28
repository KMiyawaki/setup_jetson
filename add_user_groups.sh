#!/bin/bash
TARGET_USER=${USER}
if [ $# -ne 0 ]; then
  TARGET_USER=${1}
fi

sudo gpasswd -a ${TARGET_USER} adm
sudo gpasswd -a ${TARGET_USER} dialout
sudo gpasswd -a ${TARGET_USER} cdrom
sudo gpasswd -a ${TARGET_USER} sudo
sudo gpasswd -a ${TARGET_USER} dip
sudo gpasswd -a ${TARGET_USER} video
sudo gpasswd -a ${TARGET_USER} plugdev
sudo gpasswd -a ${TARGET_USER} lpadmin
sudo gpasswd -a ${TARGET_USER} sambashare
