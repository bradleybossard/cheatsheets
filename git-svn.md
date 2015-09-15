    svn info /path/to/svn/repo   # Get info on an svn repo, most importantly the last revision ID

    git svn clone -s -r r-low:HEAD /path/to/repo/base # Standard git-svn clone, where r-low and r-high are revisions numbers

    git svn clone -r r-low:r-high /path/to/repo/dir   # Non-standard directory layout (without branches, etc) 
