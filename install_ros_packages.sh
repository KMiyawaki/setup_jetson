#!/bin/bash
TARGET_ROS=`./get_ros_distoro.sh`
# ROS packages
echo "Start install ros-${TARGET_ROS} packages"
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-cv-camera
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-image-transport
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-image-transport-plugins
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-joint-state-publisher-gui
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-joy
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-laser-filters
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-laser-pipeline
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-map-server
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-mouse-teleop
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-navigation
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-robot-state-publisher
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-rosbash
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-rviz
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-slam-gmapping
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-stage-ros
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-rosbridge-suite
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-teleop-twist-joy
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-teleop-twist-keyboard
sudo apt-get install -y --no-install-recommends ros-${TARGET_ROS}-xacro
cd ~/catkin_ws/src/
git clone https://github.com/aamirhatim/twist_filter.git
cd ~/catkin_ws && catkin_make
