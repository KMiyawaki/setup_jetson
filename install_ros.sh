#!/bin/bash
TARGET_ROS=`./get_ros_distoro.sh`
INSTALL_TYPE="desktop-full"
if [ $# -ne 0 ]; then
  INSTALL_TYPE="${1}"
fi
echo "Start install ros-${TARGET_ROS}"
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get install -y ros-${TARGET_ROS}-${INSTALL_TYPE}
sudo apt-get install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential python-catkin-tools
sudo rosdep init
rosdep update
if ! grep -q /opt/ros/${TARGET_ROS}/setup.bash ~/.bashrc; then
  echo "source /opt/ros/${TARGET_ROS}/setup.bash" >> ~/.bashrc
  source ~/.bashrc
fi
