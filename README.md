# Setup Jetson Software

## Setup Jetson NANO

- Download [`Jetson Nano Developer Kit SD Card Image`](https://developer.nvidia.com/jetson-nano-sd-card-image) and flash it onto the SD card.
- (Recommended) Set user name and password to `jetson`.

```shell
cd
git clone https://github.com/KMiyawaki/setup_jetson.git
cd setup_jetson
./setup_nano.sh
```

### Step by step setup

See [setup_nano.sh](./setup_nano.sh)

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
$ ~/jetson-inference/python/examples/detectnet.py --network=ssd-mobilenet-v2 images/peds_0.jpg output.jpg
$ eog output.jpg
```
