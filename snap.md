# snap

```
sudo snap login      # log into snap via https://login.ubuntu.com, no longer require sudo
snap logout          # logs user out
``

```
snap find <search-text>         # find a snap package
snap install <package-name>     # install a snap package
snap remove <package-name>      # remove a snap package
```

```
snap refresh               # update all installed packages
snap changes               # show recent changes
snap change <id>           # detailed log of snap change
```

```
snap connections                                    # see hardware connections
snap connect <app>:<interface> :<host-interface>    # used to grant an app interface permission to an host interface
snap disconnect app:interface                       # remove app permission to an interface
```

```
snap enable <service>              # Enable a running service
snap disable <service>             # Enable a running service

# note, snapd uses systemd under the hood and generates systemd confs in /etc/systemd/system/snap*
```

