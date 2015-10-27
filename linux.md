### os

    uname                      # Get OS name
    whatis <application-name>  # describes an application

### users

     sudo useradd -m -g <groups> -d </path/to/homedir> -s </path/to/shell> -U <username>   # path to shell i.e. /bin/bash 
    sudo adduser <username> sudo    # Add user to sudoers
     sudo passwd <username>    # Set userpasswd
     passwd -l <username>      # Lock user 
     passwd -u <username>      # Unlock user 

###process

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
