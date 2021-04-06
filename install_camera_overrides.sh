#!/bin/bash
cd ~
wget https://www.waveshare.com/w/upload/e/eb/Camera_overrides.tar.gz -O Camera_overrides.tar.gz
tar zxvf Camera_overrides.tar.gz
sudo mv ./camera_overrides.isp /var/nvidia/nvcam/settings/
sudo chmod 664 /var/nvidia/nvcam/settings/camera_overrides.isp
sudo chown root:root /var/nvidia/nvcam/settings/camera_overrides.isp
rm -f Camera_overrides.tar.gz
