#!/bin/bash
./setup_launcher.sh
./install_basic_packages.sh
./install_vscode_extensions.sh
./install_python_packages.sh
./upgrade_packages.sh
./install_jetson_inference.sh
./install_ros.sh
./init_workspace.sh
exit
