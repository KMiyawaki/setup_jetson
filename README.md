# Setup Microbot Software

## Setup Jetson Xavier NX

- See [JETPACK SDK](https://developer.nvidia.com/embedded/jetpack)
- (Recommended) Set user name to `jetson` for JetCard.

```shell
$ cd
git clone https://github.com/KMiyawaki/setup_jetson.git
$ cd setup_jetson
$ ./setup_jetson.sh
```

### Step by step setup

```shell
cd ~/setup_jetson
./stop_update.sh
./install_jetcard.sh # If you have any erros, try again.
./install_pip2.sh # Recover pip for python2.
./install_basic_packages.sh
./install_jetson_inference.sh
# Model Downloader->Download default models.
# Select default deep learning models.
# Select pyTorch for pyton 3.6.
./install_ros.sh
./init_workspace.sh
```

- Close and re-open the terminal

```shell
cd ~/setup_jetson
./install_ros_web.sh
./install_ros_deep_learning.sh
# ./install_ros_python3_supplement.sh # Buggy.
./install_python_packages.sh
./install_vscode_extensions.sh
# ./install_create_ap.sh
```

## Stop jetcard display service

If you dont have [Adafruit PiOLED - 128x32 Monochrome OLED Add-on for Raspberry Pi](https://www.adafruit.com/product/3527), stop jetcard_display service.

```shell
$ sudo systemctl disable jetcard_display
```

## Register create_ap service

```shell
cd ~/setup_jetson
./register_create_ap_service.sh
Enter SSID: # Enter SSID for virtual wifi access point.
Enter passphrase: # Enter passphrase for the SSID
```

- If you want to unregister the create_ap serivice, run the following command.

```shell
cd ~/setup_jetson
./unregister_create_ap_service.sh
```

## Japanese language support(optional)

```shell
cd ~/setup_jetson
./install_japanese.sh
```

## Upgrade all ubuntu packages

```shell
cd ~/setup_jetson
./upgrade_packages.sh
```

## Stop X server

```shell
cd ~/setup_jetson
./stop_x11.sh
```

## Start X server

```shell
cd ~/setup_jetson
./start_x11.sh
```

## Test and build SSD-Mobilenet

- See https://github.com/dusty-nv/jetson-inference/blob/master/docs/detectnet-console-2.md#detecting-objects-from-the-command-line

```shell
cd
cd jetson-inference/data
detectnet-console.py --network=ssd-mobilenet-v2 images/peds_0.jpg output.jpg
eog output.jpg
```
