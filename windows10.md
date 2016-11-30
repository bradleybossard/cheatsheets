## Using Windows 10

### Hotkeys
    Win+Tab                       # Windows and desktops overview
    Alt+Tab                       # Cycle through windows on current desktop
    Ctrl+Win+D                    # New desktop
    Ctrl+Win+F4                   # Close current desktop
    Ctrl+Win+left/right arrows    # Switch desktops

    Ctrl+Shift+Win+Up/Down arrows    # Cycle through minimize/windowed/maximize for current focus window
    Ctrl+Shift+Win+left/right arrwow # Cycle through snap to left/windowed/right for current focus window

### Add a program to startup
Start->Run, type "shell:startup".  Paste an app shortcut into folder opened.

## Ubuntu for Windows 10 subsystem

### Install Ubuntu for Windows 10
* Go to Settings from Win 10 search
* Select Updates & Security
* Select For Developers Tab, then enable the Developer Mode radio button, select Yes to modal
* Reboot computer
* Go to Control Panel from Win 10 search
* Under Programs, select "Turn Windows features on or off"
* Select "Windows Subsystem for Linux"
* Reboot computer again

### Disable beeping on bash
    sudo vi /etc/inputrc
    ## uncomment line set bell-style none

### Disable beeping on programs like vim
    echo setterm -blength 0 >> .bashrc

### Run xServer on Ubuntu for Windows
1.  Install Xming https://sourceforge.net/projects/xming/?source=typ_redirect
2.  Start bash and edit your .bashrc  `echo "export DISPLAY=:0.0" >> ~/.bashrc`
3.  `sudo sed -i 's$<listen>.*</listen>$<listen>tcp:host=localhost,port=0</listen>$' /etc/dbus-1/session.conf`
4.  Restart bash

### Run sshd server on Ubuntu for Windows
1.  From the Windows 10 search box, search 'Services', then find the service 'SSH Server Broker', right-click and select 'Stop'
2.  From the bash shell, run the following 2 commands
```
    sudo apt-get remove --yes openssh-server`
    sudo apt-get install --yes openssh-server`
```
3.  Edit sshd_config (`sudo vi /etc/ssh/sshd_config`) and make the following edits
  1.  PermitRootLogin no
  2.  AllowUsers <username> # i.e. bradleybossard
  3.  PasswordAuthentication yes  # to login using a password
  4.  UsePrivilegeSeparation no
4.  `sudo service ssh --full-restart`
5.  `service --status-all` # to verify ssh is running


### Uninstall Ubuntu for Windows 10

    lxrun /uninstall        ## Uninstall
    
    lxrun /uninstall /full  ## Remove home dir as well
