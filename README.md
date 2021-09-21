# Setup Jetson Software

## Setup Jetson NANO

- Download [`Jetson Nano Developer Kit SD Card Image 4.6`](https://developer.nvidia.com/embedded/l4t/r32_release_v6.1/jeston_nano/jetson-nano-jp46-sd-card-image.zip) and flash it onto the SD card.
- (Recommended) Set user name and password to `jetson`.

## Setup Jetson Xavier NX

- See [JETPACK SDK](https://developer.nvidia.com/embedded/jetpack)
- (Recommended) Set user name to `jetson` for JetCard.

## Step by step setup

```shell
$ cd
$ git clone https://github.com/KMiyawaki/setup_jetson.git
$ cd ~/setup_jetson
$ ./setup_launcher.sh
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
# Select pyTorch for both pyton 3.X and 2.X.
$ ./install_ros.sh
$ ./init_workspace.sh
```

- Close and re-open the terminal

```shell
$ ./install_ros_packages.sh
$ ./install_ros_web.sh
$ ./install_ros_deep_learning.sh
$ ./install_camera_overrides.sh
$ ./add_user_groups.sh
$ ./make_swapfile.sh 
$ free -h
              total        used        free      shared  buff/cache   available
Mem:           3.9G        825M        2.4G         23M        656M        2.9G
Swap:          7.9G          0B        7.9G
$ sudo ln -s /usr/include/opencv4/ /usr/include/opencv # fix compile error ros packages using cv_bridge
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
...
***Input VNC password***
# Input your vnc password
$ sudo reboot
```

## Test and build SSD-Mobilenet

- See https://github.com/dusty-nv/jetson-inference/blob/master/docs/detectnet-console-2.md#detecting-objects-from-the-command-line

```shell
$ cd
$ cd jetson-inference/data
$ detectnet-console.py --network=ssd-mobilenet-v2 images/peds_0.jpg output.jpg
$ eog output.jpg
```
