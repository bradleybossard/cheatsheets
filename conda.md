# conda

## global commands
```
conda init <shell-name>     # initialize shell for conda (bash, zsh, etc)
conda info                  # verify install, version number
conda update conda          # update to current version
conda env list              # list environments
conda info --env            # list environments (same as conda env list)
```

## create/remove environments
```
conda create --name <env-name> python=<python-version>      # create a new environment using a certain python version
conda env create --file <env-filename>                      # create an environment from a file
conda create --clone <env-name> --name <env-name>           # clone an existing environment
conda env remove --name <env-name>                          # remove an environment
```

## activate/export environment
```
conda activate <env-name>                   # activate an environment
conda env export --file <env-filename>      # export an environment to a file
```

## install packages
```
conda install --yes <package-name>     # install a package to current environment (--yes for no prompt)
conda update <package-name>            # update install package
```

## juypter
```
juypter-notebook        # Run jupyter notebook server
```
