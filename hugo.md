
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


#### Workflow using my aliases (for Github only)
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

#### Workflow for Gitlab
    hugo new site <sitename>
    cd <sitename>
    echo "/public" >> .gitignore
    # Add .gitlab-ci.yml from https://gist.github.com/bradleybossard/62f315571f582756d1f69504e3d4884d
    cd themes && git clone <git-path-to-theme>
    cd <theme-name> && rm -rf .git     # Very important and not well documented.  Gitlabl CI is looking for a static
                                         version of the theme.  Having a nested git repo will mess up the publish
    cd ../..                           # Back to root

##### Edit the config.toml, update information and add the following lines    
    theme = "hugo_theme_robust"
    googleAnalytics= = ""
    buildDrafts = true

    TODO: More params to add https://gohugo.io/overview/configuration/

##### Lastly, commmit the repo

    gitinitrepo <path-to-github-repo>
