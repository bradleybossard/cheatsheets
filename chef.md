## Install

#### Omnibus installer for Ubuntu
    curl -L https://www.opscode.com/chef/install.sh | bash
    
#### Chef development kit
Go to https://downloads.chef.io/chef-dk/ and select a version number, like chefdk_0.10.0-1_amd64.deb (version 0.10.1) and substitute it into the command below

    curl https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.10.0-1_amd64.deb > chefdk_0.10.0-1_amd64.deb
    sudo dpkg -i chefdk_0.10.0-1_amd64.deb
