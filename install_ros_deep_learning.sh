#!/bin/bash
TARGET_ROS=`./get_ros_distoro.sh`
# ROS packages
echo "Start install ros-${TARGET_ROS} deep learning packages"
sudo apt-get install -y ros-${TARGET_ROS}-image-transport
sudo apt-get install -y ros-${TARGET_ROS}-vision-msgs
cd ~/catkin_ws/src
git clone https://github.com/dusty-nv/ros_deep_learning
cd ~/catkin_ws
catkin_make
