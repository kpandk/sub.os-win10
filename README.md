# Connect USB to sub-linux wls
1. configure USB-serial adapters in WSL

`user@PC$ sudo adduser $(whoami) dialout`

* plug usb-serual adapter to PC
* check the COM number by opening Device Manager

2. Connect to port

* Assuming device is on COM 3

```

user@PC$ sudo chmod 666 /dev/ttyS3
user@PC$ sudo cu -l /dev/ttyS3 -s 115200
```

3. Exit from cu

* enter *~.*


# Mount removable media (including fomatted as FAT) and network shares

Mount removable media: (e.g. F:)

```
user@PC$ sudo mkdir /mnt/f
user@PC$ sudo mount -t drvfs F: /mnt/f
```

To safely unmount

`user@PC$ sudo umount /mnt/f`
