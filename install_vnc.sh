#!/bin/bash
sudo apt update
sudo apt install vino
sudo ln -s ../vino-server.service /usr/lib/systemd/user/graphical-session.target.wants
gsettings set org.gnome.Vino prompt-enabled false
gsettings set org.gnome.Vino require-encryption false
gsettings set org.gnome.Vino authentication-methods "['vnc']"
echo "***Input VNC password***"
read passwd
gsettings set org.gnome.Vino vnc-password $(echo -n ${passwd}|base64)
# sudo reboot
