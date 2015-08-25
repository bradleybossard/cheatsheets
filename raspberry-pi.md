Burning a RPi .img file on OSX

    diskutil list                                 # Insert your SD card, then this command will help identify it.
    diskutil unmountdisk /dev/disk#               # Unmount the SD card, where # is 1,2,etc from previous command
    sudo dd if=/path/to/img of=/dev/rdisk# bs=1m  # Burn the .img to the disk.  Note the r in front of disk.
    diskutil eject /dev/disk#                     # Eject disk after burning

