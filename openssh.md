### ssh key setup    
    ssh-copy-id -i /path/to/key.pub user@host        # install public key on remote machine
    sudo vim +/PermitRootLogin /etc/ssh/sshd_config  # edit sshd_config
    # uncomment line PermitRootLogin prohit-password
    # ChallengeResponseAuthentication no
    # PasswordAuthentication no
    # UsePAM no
    # save and exit
    sudo service sshd restart                        # restart sshd to take effect
    sudo /usr/sbin/sshd -T                           # verify /etc/ssh/sshd_config

### ssh proxy (socks5)

    ssh -D <port-number> -f -C -N -q -i <path-to-private-key> username@host
    # (-f forks to background, -C compression, -q quiet mode, -N do not execute remote command)


