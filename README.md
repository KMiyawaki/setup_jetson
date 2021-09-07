# Setup Jetson Software

## Setup Jetson NANO

- Download [`Jetson Nano Developer Kit SD Card Image JP 4.4`](https://developer.nvidia.com/jetson-nano-sd-card-image-44) and flash it onto the SD card.
    - Jetcard Upper JP 4.4 is not stable. [Latest Release (** but not yet fully verified ** )](https://github.com/NVIDIA-AI-IOT/jetcard/tree/jetpack_4.5.1#latest-release--but-not-yet-fully-verified--)
    - Jetcard SD image may not work, and we install from scratch. [The problem of not booting when burning jetcard image to sd card #91](https://github.com/NVIDIA-AI-IOT/jetracer/issues/91)
- (Recommended) Set user name to `jetson` for JetCard.

## Setup Jetson Xavier NX

- See [JETPACK SDK](https://developer.nvidia.com/embedded/jetpack)
- (Recommended) Set user name to `jetson` for JetCard.

## Step by step setup

```shell
$ cd
$ git clone https://github.com/KMiyawaki/setup_jetson.git
$ cd ~/setup_jetson
$ ./install_jetcard.sh
2021年  9月  1日 水曜日 16:05:00 JST
./install.sh: 11: ./install.sh: Bad substitution
 Install pip and some python dependencies
 ・・・・
python-setuptools (39.0.1-2) を展開しています...
python-setuptools (39.0.1-2) を設定しています ...
 All done!
2021年  9月  1日 水曜日 16:30:07 JST
# If you have any erros, run the following script and try ./install_jetcard.sh again.
# $ ./cleanup_jetcard_files.sh
$ ./install_basic_packages.sh
$ ./install_vscode_extensions.sh
$ ./install_python_packages.sh
$ ./upgrade_packages.sh
[sudo] password for jetson:
# Input password
# Select default options for all dialogues
# If you have 'nvidia-l4t-bootloader' error, run the following command
# $ sudo apt purge nvidia-l4t-bootloader
$ ./install_jetson_inference.sh
# Model Downloader->Download default models.
# Select default deep learning models.
# pyTorch for pyton 3.6 is not needed. It's installed by jetcard.
$ ./install_ros.sh
$ ./init_workspace.sh
```

- Close and re-open the terminal

```shell
$ ./install_ros_packages.sh
$ ./install_ros_web.sh
$ ./install_ros_deep_learning.sh
$ free -h
              total        used        free      shared  buff/cache   available
Mem:           3.9G        1.0G        1.3G        3.5M        1.5G        2.6G
Swap:          5.9G        666M        5.3G
$ sudo ln -s /usr/include/opencv4/ /usr/include/opencv # fix compile error ros packages using cv_bridge
```

## Stop jetcard display service

If you dont have [Adafruit PiOLED - 128x32 Monochrome OLED Add-on for Raspberry Pi](https://www.adafruit.com/product/3527), stop jetcard_display service.

```shell
$ sudo systemctl disable jetcard_display
```

## Register create_ap service

```shell
$ cd ~/setup_jetson
$ ./register_create_ap_service.sh
Enter SSID: # Enter SSID for virtual wifi access point.
Enter passphrase: # Enter passphrase for the SSID
```

- If you want to unregister the create_ap serivice, run the following command.

```shell
$ cd ~/setup_jetson
$ ./unregister_create_ap_service.sh
```

## Japanese language support(optional)

```shell
$ cd ~/setup_jetson
$ ./install_japanese.sh
```

## Upgrade all ubuntu packages

```shell
$ cd ~/setup_jetson
$ ./upgrade_packages.sh
```

## Stop X server

```shell
$ cd ~/setup_jetson
$ ./stop_x11.sh
```

## Start X server

```shell
$ cd ~/setup_jetson
$ ./start_x11.sh
```

## Setup VNC

```shell
$ cd ~/setup_jetson
$ ./install_vnc.sh
```

## Test and build SSD-Mobilenet

- See https://github.com/dusty-nv/jetson-inference/blob/master/docs/detectnet-console-2.md#detecting-objects-from-the-command-line

```shell
$ cd
$ cd jetson-inference/data
$ detectnet-console.py --network=ssd-mobilenet-v2 images/peds_0.jpg output.jpg
$ eog output.jpg
```
