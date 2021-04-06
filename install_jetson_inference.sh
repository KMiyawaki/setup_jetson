#!/bin/bash
sudo apt-get update
sudo apt-get install -y git cmake libpython3-dev python3-numpy
cd
git clone --recursive https://github.com/dusty-nv/jetson-inference
cd jetson-inference
mkdir build
cd build
cmake ../
make -j$(nproc)
# Select default deep learning models.
# Select pyTorch for pyton 3.6.
sudo make install
sudo ldconfig
