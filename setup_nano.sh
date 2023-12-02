#!/bin/bash

function get_setup_robot_programming(){
    sudo apt update
    sudo apt install git
    cd
    if [ -d setup_robot_programming ]; then
        cd setup_robot_programming
        git pull
    else
        git clone https://github.com/KMiyawaki/setup_robot_programming.git
    fi
}

function main(){
    cd "$(dirname "$0")"
    get_setup_robot_programming
    ./setup_launcher.sh
    ${HOME}/setup_robot_programming/install_basic_packages.sh -b
    ${HOME}/setup_robot_programming/install_basic_packages.sh -p
    ${HOME}/setup_robot_programming/install_python_packages.sh
    ${HOME}/setup_robot_programming/install_vscode.sh
    ${HOME}/setup_robot_programming/install_vscode_extensions.sh
    ${HOME}/setup_robot_programming/install_vscode_extensions_from_file.sh
    ${HOME}/setup_robot_programming/upgrade_packages.sh # select y for all questions
    ${HOME}/setup_robot_programming/add_user_groups.sh

    ${HOME}/setup_robot_programming/ros1/install_ros1.sh
    ${HOME}/setup_robot_programming/ros1/install_ros1_packages.sh
    ${HOME}/setup_robot_programming/ros1/init_workspace.sh -p
    ${HOME}/setup_robot_programming/ros1/install_ros1_web.sh

    ./install_jetson_inference.sh
    ./install_ros_deep_learning.sh
    ./install_camera_overrides.sh
    ./install_vnc.sh
    ./make_swapfile.sh
    free -h
    sudo ln -s /usr/include/opencv4/ /usr/include/opencv
    sudo reboot
}

main "$@"
