    pyenv install -l              # List available versions 
    pyenv install <version>       # Install a version
    pyenv uninstall <version>     # Uninstalls a version
    pyenv versions                # List available versions
    pyenv global <version>        # Set the global version

    pyenv virtualenv <name>       # Create a python virtualenv
    pyenv virtualenvs             # List existing virtualenvs
    pyenv activate <name>         # Activate a virtualenv
    pyenv deactivate              # Deactivate current virtualenv
    pyenv uninstall <virtualenv>  # Deletes an virtualenv

    pyenv local <virtualenv>      # Use the <virtualenv> for the is directory
    pyenv local <version>         # Use python <version> for the is directory, creates a .python-version file

