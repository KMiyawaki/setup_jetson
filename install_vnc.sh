#!/bin/bash
sudo apt-get update
sudo apt-get install -y vino
mkdir -p ~/.config/autostart
cp /usr/share/applications/vino-server.desktop ~/.config/autostart
gsettings set org.gnome.Vino prompt-enabled false
gsettings set org.gnome.Vino require-encryption false
gsettings set org.gnome.Vino authentication-methods "['vnc']"
echo "***Input VNC password***"
read passwd
gsettings set org.gnome.Vino vnc-password $(echo -n ${passwd}|base64)
# sudo reboot
