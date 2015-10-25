Burning a RPi .img file on OSX

    diskutil list                                 # Insert your SD card, then this command will help identify it.
    diskutil unmountdisk /dev/disk#               # Unmount the SD card, where # is 1,2,etc from previous command
    sudo dd if=/path/to/img of=/dev/rdisk# bs=1m  # Burn the .img to the disk.  Note the r in front of disk.
    diskutil eject /dev/disk#                     # Eject disk after burning

Turning on/off LED

    echo 9 > /sys/class/gpio/export               # Set up pin 9, change 9 to whatever number for a different pin
    echo out > /sys/class/gpio/gpio9/direction    # Set i/o direction for pin 9 to output
    echo 1 > /sys/class/gpio/gpio4/value          # Set pin voltage to high
    echo 0 > /sys/class/gpio/gpio4/value          # Set pin voltage to low
    
