## WSL2

https://docs.microsoft.com/en-us/windows/wsl/wsl2-install

tldr - You must enrole in the Windows Insider Program, then enable "Fast Ring" preview builds

```
wsl --set-default-version 2  # Sets default to WSL 2
wsl --list --verbose         # List currently installed distros
```

## Manually install linux distro from command line

[Manually download Windows Subsystem for Linux (WSL) Distros](https://docs.microsoft.com/en-us/windows/wsl/install-manual)

## Using snap on WSL
```
sudo apt install --yes daemonize
# put the following two lines in a 
sudo daemonize /usr/bin/unshare --fork --pid --mount-proc /lib/systemd/systemd --system-unit=basic.target
exec sudo nsenter -t $(pidof systemd) -a su - $LOGNAME
snap version     # Verify it's working
```
