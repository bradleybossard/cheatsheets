    tmux                        # start new session
    tmux new -s session_name    # new session with name 
    tmux a                      # attach to last opened session    
    tmux a -t session_name      # attach to session    
    tmux ls                     # list sessions
    tmux det                    $ detach from session
    tmux detach
    tmux kill-session -t session_name  # kill session 
    
    prefix r      # Reload tmux conf
    prefix I      # Install plugins, reload tmux conf

    prefix :new<CR>    # new session
    prefix d           # detach from session
    prefix s           # list sessions
    prefix L           # go to last session
    prefix $           # name session

    prefix c      # new window
    prefix w      # list windows
    prefix f      # find window
    prefix ,      # name window
    prefix &      # kill window

    prefix [      # enter scroll mode
    prefix space  # enter visual copy mode
    prefix enter  # end scroll mode, copies any seletct text to tmux clipboard 
    prefix ]      # paste from clipboard

    prefix %         # split pane vertically
    prefix "         # split pane horizontally 
    prefix alt+down  # resize pane in down direction 
    prefix alt+up    # resize pane in up direction
    prefix + {       # swap panes

    prefix x  # kill pane
    prefix +  # break pane into window (e.g. to select text by mouse to copy)
    prefix -  # restore pane from window
    <prefix> q (Show pane numbers, when the numbers show up type the key to goto that pane)
    <prefix> { (Move the current pane left)
    <prefix> } (Move the current pane right)
    <prefix> z toggle pane zoom

## Plugins shortcuts

    prefix + /            # Search
    prefix + ctrl-f       # Filename search
    prefix + ctrl-u       # Url search
    enter                 # Copy, when in highlight mode

