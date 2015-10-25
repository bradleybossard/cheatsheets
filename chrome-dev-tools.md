[Devtools Cheatsheet, seems outdated](http://anti-code.com/devtools-cheatsheet/)

    Cmd+Alt+i                         # Open Dev Tools
    Cmd+Alt+j                         # Open Dev Tools in console mode
    Cmd + [ or Cmd + ]                # Navigate through tabs

### Inspector tab
    alt+click <element-expand-caret>  # Expand all elements

### Source tab
    cmd+O                             # Open command interface
    cmd+O, then :<line-number>        # Go to line number in current file    

    cmd+B                             # Toggle breakpoint
    cmd+/                             # Comment line
    cmd+, or cmd+.                    # Navigate through callstack

    select code then Ctrl+Shift+E     # Run selected code in the console
    file: <filename>                  # Filter search results by particular file

### Network tab filtering
    is:running                        # Show only running requests
    method: <method>                  # Filter by method (GET, POST, etc)
    larger-than:<num-bytes>           # Fitler requests by number of bytes
    status-code: <code>               # Filter requests by code, i.e. 200
    domain:                           # Domain filter
    mime-type:
    scheme:
    set-cookie-domain:
    set-cookie-value:
    has-repsonse-header:

    -larger-than:<num-bytes>          # Negation of fitler by adding -

### Console commands
    cmd+k                                             # Clear console

    console.log();                                    # Log to console
    console.dir(object);                              # Print an object
    console.trace();                                  # Print stack trace
    console.time(<tag>);                              # Start timing with event name tag
    console.timeEnd(<tag>);                           # Stop timing and print tag
    console.profile(<tag>);                           # Start profile with name tag 
    console.profileEnd(<tag>);                        # End profile with name tag
    console.table(<array>);                           # Print an array of objects in a table
    console.table(<array>, <header1>, <header2>);     # Print an array of objects in a table, filtering by properties
    $_                                                # Access next result

### Other links

[Chrome Devtools tips and tricks](http://mo.github.io/2015/10/19/chrome-devtools.html)
