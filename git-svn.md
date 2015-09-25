    svn info /path/to/svn/repo   # Get info on an svn repo, most importantly the last revision ID

    git svn clone -s -r rLow:HEAD /path/to/repo/base # Standard git-svn clone, where rLow and rHigh are revisions numbers, i.e. 4:6

    git svn clone -r rLow:rHigh /path/to/repo/dir    # Non-standard directory layout (without branches, etc) 
