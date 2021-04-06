#!/bin/bash
wget https://bootstrap.pypa.io/get-pip.py
sudo /usr/bin/python3 get-pip.py
sudo /usr/bin/python3 -m pip install pip -U
rm -f get-pip.py
