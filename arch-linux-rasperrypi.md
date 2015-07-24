    username: root, password: root                # initial login 

    useradd -m -g users -s /bin/bash <username>   # add user to group users, startup with bash shell
    passwd <username>                             # change password for user

    pacman -Syu                                   # update all packages
    pacman-db-upgrade                             # update database are updating all packages

    pacman -S docker
