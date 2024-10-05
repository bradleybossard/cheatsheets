## Install an Ubuntu Server

### install server

### after install

sudo apt upgrade && sudo apt --yes dist-upgrade

sudo apt install --yes qemu-guest-agent

sudo systemctl start qemu-guest-agent.service

# in proxmox, go to Options (for VM in question), Edit, then enable QEMU Guest Agent.
# VM needs to restarted to take effect

sudo systemctl status qemu-guest-agent.service  # to verify it's working



## Make an ubuntu server container template

### Creating the template

1.  Download the ubuntu server template image in the web console.

2.  Create a container based on the image

3.  `sudo apt update && sudo apt --yes dist-upgrade`  

4.  `sudo apt clean && sudo apt autoremove`

5.  `useradd <user>`

6.  `usermod -aG sudo <user>`

7.  logout root and log in as <user>

8.  `cd /etc/ssh;  sudo rm /etc/ssh` 

9.  sudo truncate -s 0 /etc/machine-id

10. sudo poweroff

11. in proxmox web console, convert container to template

### Create new instances from the template

1.  Clone the template

2.  sudo ssh-keygen -A

