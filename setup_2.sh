#!/bin/bash
./install_ros_packages.sh
./install_ros_web.sh
./install_ros_deep_learning.sh
./install_camera_overrides.sh
./add_user_groups.sh
./make_swapfile.sh
sudo ln -s /usr/include/opencv4/ /usr/include/opencv
free -h
./install_vnc.sh
sudo reboot
