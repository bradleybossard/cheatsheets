## Burning an RPi .img file on OSX

    diskutil list                                 # Insert your SD card, then this command will help identify it.
    diskutil unmountdisk /dev/disk#               # Unmount the SD card, where # is 1,2,etc from previous command
    sudo dd if=/path/to/img of=/dev/rdisk# bs=1m  # Burn the .img to the disk.  Note the r in front of disk.
    diskutil eject /dev/disk#                     # Eject disk after burning

## Turning on/off LED

    echo 9 > /sys/class/gpio/export               # Set up pin 9, change 9 to whatever number for a different pin
    echo out > /sys/class/gpio/gpio9/direction    # Set i/o direction for pin 9 to output
    echo 1 > /sys/class/gpio/gpio4/value          # Set pin voltage to high
    echo 0 > /sys/class/gpio/gpio4/value          # Set pin voltage to low
    
## Auto-mounting an SMB drive at boot
    sudo apt install -y cifs-utils
    # Add the following 4 lines to your /etc/fstab to mount network partitions
    tmpfs /tmp  tmpfs nodev,nosuid,mode=1777  0 0
    //worldbook1.bossard.lan/Public4TB1 /mnt/worldbook1 cifs username=username,password=password 0 0
    //worldbook2.bossard.lan/Public4TB2 /mnt/worldbook2 cifs username=username,password=password 0 0
    //worldbook3.bossard.lan/tb3        /mnt/worldbook3 cifs username=username,password=password 0 0
    sudo mount -a   # Remount drives

## Burning .img images on Linux
    sudo fdisk -l              # List mounted drives ('diskutil list' on OSX)
    sudo umount /dev/<drive>   # Unmount sd card drive  <drive> = sdc1 (or whever card is mounted)
    mount | grep <drive>       # Check that drive is no longer mounted
    sudo dd if=image.img of=/dev/<drive> bs=4M   # Burn .img to disk where <drive> is the <drive> from step 2
    sync
