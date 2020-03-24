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

### Uninstall Ubuntu for Windows 10

    lxrun /uninstall        ## Uninstall
    
    lxrun /uninstall /full  ## Remove home dir as well
