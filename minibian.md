# Minibian

### Resizing the file system

    fdisk /dev/mmcblk0         # run fdisk interactively
    
Then delete partitions with d and create a new with n. You can view the existing table with p.

* p to see the current start of the main partition
* d, 2 to delete the main partition
* n p 2 to create a new primary partition, next you need to enter the start of the old main partition and then the size (enter for complete SD card). The main partition on Minibian image from 2015-11-12 starts at 125056, but the start of your partition might be different. Check the p output!
* w write the new partition table

```
    sudo reboot                 # reboot needed to take effect
    resize2fs /dev/mmcblk0p2    # resize new partition
    df -h                       # verify it worked
```    
