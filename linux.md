#os
    uname                      # Get OS name
    whatis <application-name>  # describes an application

#process
    ps -aux                    # List all processes
    ls -l /proc/<pid>/cwd      # Determine current working directory of process
    ulimit                     # get/set process limits
    jobs                       # show processes running in background
    fg <job-no>                # bring background job to foreground

#files
    lsof                       # List open files

#disk
    df                         # Report file system disk usage

#text
    nl <text-file>             # cat with line numbers
