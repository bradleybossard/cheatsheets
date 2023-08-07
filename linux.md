### os
```
    uname -a                   # Get OS name
    lsb_release -a             # Linux distribution name, i.e. Trusty or Vivid
    cat /etc/os-release        # More detailed OS description
    whatis <application-name>  # describes an application
```

## hardware

### hardware overview
```
sudo lshw -short               # get hardware information
sudo lshw -short -C memory     # get memory Class hardware info
sudo inxi -Fxz                 # colored hardware summary  (must be apt installed)
hwinfo --short                 # hardware summary  (must be apt installed)
```

### cpu
```
cat /proc/cpuinfo              # get CPU information
lscpu                          # summarized CPU information
```

### memory
```
sudo dmidecode --type memory   # get memory information
```

### devices
```
lspci         # show pci devices
lsblk         # show block devices
lsusb         # show usb devices
```

### power
```
sudo reboot      # Reboot machine
sudo poweroff    # Shut down machine
```

### users
```
sudo adduser --home /home/<username> --shell /bin/bash <username>
sudo adduser <username> sudo    # Add user to sudoers
sudo passwd <username>    # Set userpasswd
passwd -l <username>      # Lock user 
passwd -u <username>      # Unlock user
```

### process
```
ps -aux                    # List all processes
ls -l /proc/<pid>/cwd      # Determine current working directory of process
ulimit                     # get/set process limits
jobs                       # show processes running in background
fg <job-no>                # bring background job to foreground
```

### files
```
    lsof                       # List open files
```

### disk
```
    hdparm                     # get/set hard disk parameters
    df                         # Report file system disk usage
    ncdu                       # Ncurses disk usage (quite awesome for analyzing entire drive usage)
```

### text
```
    nl <text-file>             # cat with line numbers
```

### clipboard
```
cat <text-file> | xclip             # copy text file to clipboard (to be pasted by middle mouse click)
cat <text-file> | xclip -sel clip   # copy text file to clipboard (to be pasted by Ctrl-V)
xclip -o > <text-file>              # dump contents of clipboard to file
```

### misc
```
    stress --cpu 2 --timeout 60  # Stress 2 cpus for 60 seconds
```
