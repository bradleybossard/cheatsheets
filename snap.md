# snap

# Account Management
```
sudo snap login      # log into snap via https://login.ubuntu.com, no longer require sudo, access to beta snaps
snap logout          # logs user out
``

# Find Install Remove
```
snap find <search-text>         # find a snap package
snap install <package-name>     # install a snap package
snap remove <package-name>      # remove a snap package
```

### Changes
```
snap refresh               # update all installed packages
snap changes               # show recent changes
snap change <id>           # detailed log of snap change
```

### Connections
```
snap connections                                    # see hardware connections
snap connect <app>:<interface> :<host-interface>    # used to grant an app interface permission to an host interface
snap disconnect app:interface                       # remove app permission to an interface
```

### Services
```
snap enable <service>              # Enable a running service
snap disable <service>             # Enable a running service

# note, snapd uses systemd under the hood and generates systemd confs in /etc/systemd/system/snap*
```

### Variables
```
snap set <snap-name> key1=value1 [key2=value2...]      # set snap variables (can be exposed by snap to for instance set alternative port numbers)
snap get <snap-name> key1 [key2...]                    # get current values of snap variables
```
