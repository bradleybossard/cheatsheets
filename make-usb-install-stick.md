```
# use this to determine which /dev/sb* the usb key is
sudo fdisk -l

# Burn the .iso to the usb key.  Below, usb key = /dev/sbc
sudo dd if=/path/to/iso/file.iso of=/dev/sbc bs=512k
```
