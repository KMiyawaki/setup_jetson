#!/bin/bash
sudo apt-get update
sudo apt-get install unattended-upgrades -y
sudo dpkg-reconfigure -plow unattended-upgrades
# stop 20auto-upgrades
sudo sed -i -e "s/\"1\"/\"0\"/g" /etc/apt/apt.conf.d/20auto-upgrades
cat /etc/apt/apt.conf.d/20auto-upgrades

# stop apt-daily, apt-daily-upgrades
sudo systemctl mask apt-daily.service
sudo systemctl mask apt-daily.timer
sudo systemctl mask apt-daily-upgrade.service
sudo systemctl mask apt-daily-upgrade.timer

# comment out 50unattended-upgrades "${distro_id}:${distro_codename}-security";
sudo sed -r -i -e "s/^(.*)(\{distro_codename\}-security)(.*)$/\/\/ \1\2\3/g" /etc/apt/apt.conf.d/50unattended-upgrades
cat /etc/apt/apt.conf.d/50unattended-upgrades | grep -security
