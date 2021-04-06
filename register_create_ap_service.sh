#!/bin/bash
read -p "Enter SSID: " SSID
read -p "Enter passphrase: " PASS
touch create_ap.conf
{
  echo "WIFI_IFACE=wlan0"
  echo "INTERNET_IFACE=wlan0"
  echo "SSID=${SSID}"
  echo "PASSPHRASE=${PASS}"
} > create_ap.conf
sudo mv create_ap.conf /etc
sudo systemctl enable create_ap
sudo systemctl start create_ap
