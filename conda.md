# conda

```
conda info                             # verify install, version number

conda update conda                     # update to current version
conda install --yes <package-name>     # install a package to current environment (--yes for no prompt)
conda updat <package-name>             # update install package

conda create --name <env-name> --python=<python-version>    # create a new environment using a certain python version
conda env list                                              # list environments
source activate <env-name>                                  # activate an environment
conda create --clone <env-name> --name <env-name>           # clone an existing environment
conda env remove --name <env-name>                          # remove an environment
conda env export --file <env-filename>                      # export an environment to a file
conda create --name <env-name> --file <env-filename>        # create an environment from a file

juypter-notebook        # Run jupyter notebook server
```
