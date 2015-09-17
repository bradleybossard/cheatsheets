    Cmd+Alt+i                      # Open Dev Tools
    Cmd + [ or Cmd + ]             # Navigate through tabs


### Source tab
    cmd+O                          # Open command interface
    cmd+O, then :<line-number>     # Go to line number in current file    

    select code then Ctrl+Shift+E  # Run selected code in the console
    file: <filename>               # Filter search results by particular file

### Network tab filtering
    is:running                     # Show only running requests
    method: <method>               # Filter by method (GET, POST, etc)
    larger-than:<num-bytes>        # Fitler requests by number of bytes
    status-code: <code>            # Filter requests by code, i.e. 200
    domain:                        # Domain filter
    mime-type:
    scheme:
    set-cookie-domain:
    set-cookie-value:
    has-repsonse-header:


    -larger-than:<num-bytes>       # Negation of fitler by adding -

### Console commands
    console.log();
    console.trace();               # Print stack trace

