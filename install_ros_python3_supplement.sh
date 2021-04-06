#!/bin/bash
# Python3 packages
sudo pip3 install -U rospkg catkin_pkg
# Build cv_bridge from source for python3
cd
mkdir catkin_build_ws
cd catkin_build_ws
catkin config -DPYTHON_EXECUTABLE=/usr/bin/python3 -DPYTHON_INCLUDE_DIR=/usr/include/python3.6m -DPYTHON_LIBRARY=/usr/lib/aarch64-linux-gnu/libpython3.6m.so
catkin config --install
mkdir src
cd src
git clone -b melodic https://github.com/ros-perception/vision_opencv.git
cd ~/catkin_build_ws
catkin build cv_bridge
# echo "source ~/catkin_build_ws/install/setup.bash --extend" >> ~/.bashrc
