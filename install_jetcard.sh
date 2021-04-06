#!/bin/bash
sudo apt-get update
sudo apt-get install -y python3-pip python3-pil python3-smbus python3-matplotlib cmake -y
cd
git clone https://github.com/NVIDIA-AI-IOT/jetcard.git
cd jetcard
./install.sh