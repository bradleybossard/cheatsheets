
#### Create new site
    hugo new site <site-name>
    
#### Create new post    
    hugo new post/welcome.md
    
#### Add a theme    
    mkdir themes && cd themes && git clone https://github.com/dim0627/hugo_theme_robust.git

#### Undraft a post
    hugo undraft content/post/good-to-great.md
    
#### Undraft all posts
    for file in $(ls content/post/*.md); do hugo undraft $file; done;
    
#### Generate static version in /public
    hugo --theme=hugo_theme_robust


#### Workflow using my aliases
    hugo new site <sitename>
    cd <sitename>
    gitinitrepo <path-to-github-repo>   # Adds all files, commits, sets remote url, pushes
    # Add theme and posts
    hugoundraftall                      # Undrafts all drafted posts
    hugobuild                           # Builds content, uses first theme in themes dir
    git ac "Adding more stuff"
    hugoinitpublish                     # Sets up subtree for publishing
    # Add more posts/build/commit
    hugopublish                         # More commits to subtree gh-pages
