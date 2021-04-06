#!/bin/bash
cd
sudo apt-get install -y --no-install-recommends hostapd -y
git clone https://github.com/oblique/create_ap
cd create_ap
sudo make install
# https://github.com/oblique/create_ap/issues/107#issuecomment-140786781
cd 
cd setup_jetson
sudo patch -u /usr/bin/create_ap < create_ap.patch
