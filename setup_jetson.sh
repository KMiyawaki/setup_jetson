#!/bin/bash
./upgrade_packages.sh
./stop_update.sh
./install_jetcard.sh # You have to enter pass word, during installation process. If you have any erros, try again.
./install_pip2.sh # Recover pip for python2.
./install_basic_packages.sh
./install_jetson_inference.sh # Model Downloader->Download default models.
./install_ros.sh
./init_workspace.sh
./install_ros_web.sh
./install_ros_deep_learning.sh
# ./install_ros_python3_supplement.sh
./install_python_packages.sh
./install_vscode_extensions.sh
# ./install_create_ap.sh
