#!/bin/bash

function main(){
    local -r LATEST="32.7"
    local -r CRNT=`dpkg-query --showformat='${Version}\n' --show nvidia-l4t-core`
    if [[ "$CRNT" =~ "${LATEST}" ]]; then
        echo "Current Jetpack ${CRNT} is latest (${LATEST}) for Jetson NANO"
        return 0
    fi
    sudo sed -i -e "s/r3.\../r${LATEST}/g" /etc/apt/sources.list.d/nvidia-l4t-apt-source.list
    echo "OK. /etc/apt/sources.list.d/nvidia-l4t-apt-source.list was upgraded."
    echo "Now, dist-upgrade will start. You have to answer 'Yes' to all questions."
    echo "Are you ready ?(Y/N)"
    read ANS
    if [[ "$ANS" =~ "Y" ]]; then
        sudo apt update
        sudo apt dist-upgrade
        echo "OK. upgrade finished. reboot Jetson NANO and exec the following commands"
        echo "sudo apt install --only-upgrade tensorrt"
        echo "sudo apt install nvidia-jetpack"
    else
        echo "Stop upgrade"
        return 1
    fi
}

main "$@"
