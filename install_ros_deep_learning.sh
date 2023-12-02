#!/bin/bash

function main(){
    cd "$(dirname "$0")"
    local -r TARGET_ROS=`${HOME}/setup_robot_programming/ros1/get_suitable_ros1.sh`
    local -r ROS_SETUP="/opt/ros/${TARGET_ROS}/setup.bash"
    # ROS packages
    source "${ROS_SETUP}"
    echo "Start install ros-${TARGET_ROS} deep learning packages"
    sudo apt-get install -y ros-${TARGET_ROS}-image-transport
    sudo apt-get install -y ros-${TARGET_ROS}-vision-msgs
    cd ~/catkin_ws/src
    git clone https://github.com/dusty-nv/ros_deep_learning
    cd ~/catkin_ws
    catkin_make
}

main "$@"
