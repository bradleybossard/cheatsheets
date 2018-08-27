## Brew services

    brew list                             # list installed brew packages
    brew leaves                           # list only top level packages (no dependencies)

    brew tap homebrew/services            # one time install of brew services

    brew services list                    # list services installed via brew
    brew services restart <servicename>   # restart service 
    brew services start <servicename>     # start service 
    brew services stop <servicename>      # stop service 
    brew services cleanup                 # remove unused plist for uninstalled brew services
