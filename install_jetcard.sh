#!/bin/bash
sudo apt-get update
sudo apt-get install -y python3-pip python3-pil python3-smbus python3-matplotlib cmake -y
sudo ln -s /usr/include/locale.h /usr/include/xlocale.h
# https://github.com/carla-simulator/carla/issues/503
cd
git clone https://github.com/NVIDIA-AI-IOT/jetcard.git
cd jetcard
git checkout -b jetpack_4.3 origin/jetpack_4.3
./install.sh
