### ssh key setup

Complete these steps to install an ssh key for remote login of a non-root user, disable remote login for root and restrict login to ssh keys only.

```
    ssh-copy-id -i /path/to/key.pub user@host        # install public key on remote machine
```

```
    # edit sshd_config
    sudo vim /etc/ssh/sshd_config

    # ensure the following settings
    PermitRootLogin no
    ChallengeResponseAuthentication no
    PasswordAuthentication no
    UsePAM no
    # save and exit
```

```
    sudo service sshd restart                        # restart sshd to take effect
    sudo /usr/sbin/sshd -T                           # verify /etc/ssh/sshd_config
```

### ssh proxy (socks5)

```
    ssh -D <port-number> -f -C -N -q -i <path-to-private-key> username@host
    # (-f forks to background, -C compression, -q quiet mode, -N do not execute remote command)
```
