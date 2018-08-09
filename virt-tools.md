
virt-install --name=centos7vm --ram=1024 --vcpus=1 --cdrom=./CentOS-7-x86_64-Minimal-1804.iso --os-type=linux --os-variant=rhel7 --network type=direct,source=eth0 --disk path=/var

virsh list --all            # List all virtual machines

virsh dominfo <vm-name>     # Get info on virtual machine

virsh edit <vm-name>        # Open VM config in editor

virsh shutdown <vm-name>    # Shutdown virtual machine


# Clone a virtual machine
virt-clone --original <source-vm-name> --auto-clone --name <target-vm-name>

virsh autostart <vm-name>             # Enable VM to boot when host does 
virsh autostart --disable <vm-name>   # Disable autobooting of VM


