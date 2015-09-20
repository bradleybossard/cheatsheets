    vagrant init <boxname>        # Create a Vagrantfile in directory for the boxname, i.e. ubuntu/trusty64
    vagrant init ubuntu/trusty64  # Create a Ubuntu Trusty 64 machine
    vagrant up                    # Bring the machine described in the Vagrant file up on this machine
    vagrant reload --provision    # Reload the machine and re-provision
    vagrant ssh                   # SSH in the machine decribed by the Vagrantfile in the current directory
    vagrant destroy               # Destroy this machine


    vagrant box list              # list of boxes locally available
    vagrant box add <boxname>     # fetch a box
    vagrant box remove <boxname>  # delete a local box image
