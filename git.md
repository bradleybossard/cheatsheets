    git log --author=<author-name>      # git commits by author
    git log --grep="message-text"       # grep log files
    git log -S "line-of-code"           # find which commit a certain line of code was added.
    git log origin/master..new          # see what you have not pushed yet

    git count-objects -v                # see stats about your git database
    git gc                              # run garbage collection on your database
