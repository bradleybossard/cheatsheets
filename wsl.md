# WSL (Windows Subsystem for Linux) tips

## Install Ubuntu for Windows 10
* Go to Settings from Win 10 search
* Select Updates & Security
* Select For Developers Tab, then enable the Developer Mode radio button, select Yes to modal
* Reboot computer
* Go to Control Panel from Win 10 search
* Under Programs, select "Turn Windows features on or off"
* Select "Windows Subsystem for Linux"
* Reboot computer again

alternatively, the above may be acheived running the following two commands (and rebooting) but I haven't tested this yet

```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
```

## WSL2

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
