# Connect USB to sub-linux wls
1. configure USB-serial adapters in WSL

`adduser $(whoami) dialout`

* plug usb-serual adapter to PC
* check the COM number by opening Device Manager

2. Connect to port

* Assuming device is on COM 3

```
chmod 666 /dev/ttyS3
sudo cu -l /dev/ttyS3 -s 115200
```

3. Exit from cu

* enter *~.*

