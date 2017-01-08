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

### Update OS and install sudo (as root)

     apt-get update --fix-missing                # update os, fix any broken linkages
     apt-get install --yes sudo tmux vim git     # install the basics
     
     

### Create user (as root)

    adduser --home /home/<username> --shell /bin/bash <username>
    adduser <username> sudo    # Add user to sudoers
    passwd    # Change root passwd

### Lock down OS from root login (as root)
    vim +/PermitRootLogin /etc/ssh/sshd_config  # edit sshd_config
    # change PermitRootLogin from 'yes' to 'no'
    # change ChallengeResponseAuthentication no
    # PasswordAuthentication no
    # UsePAM no
    # save and exit
    service sshd restart                        # reboot sshd for changes to take effect

### Install ssh key (as user)
    ssh-copy-id -i /path/to/key.pub user@host
