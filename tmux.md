    tmux                        # start new session
    tmux new -s session_name    # new session with name 
    tmux a                      # attach to last opened session    
    tmux a -t session_name      # attach to session    
    tmux ls                     # list sessions
    tmux det                    $ detach from session
    tmux detach
    tmux kill-session -t session_name  # kill session 
    
    prefix r      # Reload tmux conf

    prefix :new<CR>    # new session
    prefix d           # detach from session
    prefix s           # list sessions
    prefix $           # name session

    prefix c      # new window
    prefix w      # list windows
    prefix f      # find window
    prefix ,      # name window
    prefix &      # kill window

    prefix [      #enter copy mode

    prefix %         # split pane vertically
    prefix "         # split pane horizontally 
    prefix alt+down  # resize panel down
    prefix alt+up    # resize panel down

    prefix o  # swap panes
    prefix q  # show pane numbers
    prefix x  # kill pane
    prefix +  # break pane into window (e.g. to select text by mouse to copy)
    prefix -  # restore pane from window
    â½  space - toggle between layouts
    <prefix> q (Show pane numbers, when the numbers show up type the key to goto that pane)
    <prefix> { (Move the current pane left)
    <prefix> } (Move the current pane right)
    <prefix> z toggle pane zoom

## <a name="syncPanes"></a>Sync Panes 

You can do this by switching to the appropriate window, typing your Tmux prefix (commonly Ctrl-B or Ctrl-A) and then a colon to bring up a Tmux command line, and typing:

```
:setw synchronize-panes
```

You can optionally add on or off to specify which state you want; otherwise the option is simply toggled. This option is specific to one window, so it wonâ€™t change the way your other sessions or windows operate. When youâ€™re done, toggle it off again by repeating the command. [tip source](http://blog.sanctum.geek.nz/sync-tmux-panes/)


    d  detach
    t  big clock
    ?  list shortcuts
    :  prompt

## Configurations Options:

    # Mouse support - set to on if you want to use the mouse
    * setw -g mode-mouse off
    * set -g mouse-select-pane off
    * set -g mouse-resize-pane off
    * set -g mouse-select-window off

    # Set the default terminal mode to 256color mode
    set -g default-terminal "screen-256color"

    # enable activity alerts
    setw -g monitor-activity on
    set -g visual-activity on

    # Center the window list
    set -g status-justify centre

    # Maximize and restore a pane
    unbind Up bind Up new-window -d -n tmp \; swap-pane -s tmp.1 \; select-window -t tmp
    unbind Down
    bind Down last-window \; swap-pane -s tmp.1 \; kill-window -t tmp
