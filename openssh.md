### ssh key setup

Complete these steps to install an ssh key for remote login of a non-root user, disable remote login for root and restrict login to ssh keys only.

```
# install public key on remote machine
ssh-copy-id -i /path/to/key.pub user@host
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
# restart sshd to take effect
sudo service sshd restart
# verify /etc/ssh/sshd_config
sudo /usr/sbin/sshd -T
```

### ssh proxy (socks5)

```
ssh -D <port-number> -f -C -N -q -i <path-to-private-key> username@host
# (-f forks to background, -C compression, -q quiet mode, -N do not execute remote command)
```
