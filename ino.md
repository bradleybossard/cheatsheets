    ino init                    # Initialize ino directory structure in current dir
    ino list-models             # List models ino supports
    ino build -m <board-name>   # Build current directory for <board-name>, i.e. ino build -m nano328 for Arduino Nano
    ino upload -m <board-name>  # Upload compiled sketch to connected board

    ino serial -- -e 'x'        # Run ino serial, and change hotkey to ctrl-x, instead of default ctrl-a
                                # This is necessary so it doesn't conflict with my ctrl-a hotkey in tmux
                                # ctrl-a, then q to quit (hold ctrl entire time)
    
### Links

* [Quick start — Ino 0.3 documentation](http://inotool.org/quickstart)
