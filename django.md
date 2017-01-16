## Starting a project from scratch (assuming virtualenvwrapper installed)
    mkvirtualenv <newprojectname>               # Create virtualenv for project and begin using it
    pip install django==1.8                     # Install Django
    django-admin.py startapp <newprojectname>   # Create an app 'testapp'
    cd <newprojectname>                         # Change into project directory
    setvirtualenvproject                        # Set the virtualenv project dir to the current directory
    pip freeze > requirements.txt               # Freeze requirements to a file
    git init                                    # Initialize git
 
 
## Project creation using cookiecutter    
    cookiecutter https://github.com/pydanny/cookiecutter-djangopackage.git
