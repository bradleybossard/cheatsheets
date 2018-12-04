## Install on Linux

    sudo apt-get install virtualbox
    sudo apt-get install vagrant
    sudo apt-get install virtualbox-dkms

## Finding boxes

[Discover Vagrant Boxes - Vagrant Cloud](https://app.vagrantup.com/boxes/search) - Generic search for vagrant images (use for libvirt/kvm/qemu)

[bento - Vagrant Cloud](https://app.vagrantup.com/bento) - Bento boxes are highly-optimized Vagrant templates that work with multiple hypervisors (VirtualBox/VMWare/etc)

## Commands

```
    vagrant global-status         # show status of all vms

    vagrant init <boxname>            # Create a Vagrantfile in directory for the boxname, i.e. ubuntu/trusty64
    vagrant init bento/ubuntu-18.04   # Create a Ubuntu Trusty 64 machine
    vagrant up                        # Bring the machine described in the Vagrant file up on this machine
    vagrant reload --provision        # Reload the machine and re-provision
    vagrant ssh                       # SSH in the machine decribed by the Vagrantfile in the current directory
    vagrant halt                      # Power off machine
    vagrant destroy                   # Destroy machine

    vagrant box list              # list of boxes locally available
    vagrant box add <boxname>     # fetch a box
    vagrant box remove <boxname>  # delete a local box image
```
