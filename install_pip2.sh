#!/bin/bash
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
sudo /usr/bin/python2 get-pip.py
sudo /usr/bin/python2 -m pip install pip -U
rm -f get-pip.py
