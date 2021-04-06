#!/bin/bash
TARGET_ROS=`./get_ros_distoro.sh`
# ROS packages
echo "Start install ros-${TARGET_ROS} web packages"
sudo apt-get install -y --no-install-recommends ros-melodic-roswww -y
sudo apt-get install -y --no-install-recommends ros-melodic-rosbridge-suite -y
sudo apt-get install -y --no-install-recommends ros-melodic-web-video-server -y
sudo apt-get install -y --no-install-recommends ros-melodic-tf2-web-republisher -y
cd ~/catkin_ws/src
git clone https://github.com/GT-RAIL/robot_pose_publisher.git
cd ..
catkin_make
