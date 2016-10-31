### os

    uname -a                   # Get OS name
    lsb_release -a             # Linux distribution name, i.e. Trusty or Vivid
    cat /etc/os-release        # More detailed OS description
    whatis <application-name>  # describes an application

### users

    sudo adduser --home /home/<username> --shell /bin/bash <username>
    sudo adduser <username> sudo    # Add user to sudoers
    sudo passwd <username>    # Set userpasswd
    passwd -l <username>      # Lock user 
    passwd -u <username>      # Unlock user 

### process

    ps -aux                    # List all processes
    ls -l /proc/<pid>/cwd      # Determine current working directory of process
    ulimit                     # get/set process limits
    jobs                       # show processes running in background
    fg <job-no>                # bring background job to foreground

### files

    lsof                       # List open files

### disk

    df                         # Report file system disk usage
    ncdu                       # Ncurses disk usage (quite awesome for analyzing entire drive usage)

### text

    nl <text-file>             # cat with line numbers

### misc

    stress --cpu 2 --timeout 60  # Stress 2 cpus for 60 seconds
