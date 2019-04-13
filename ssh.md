## Template of ssh client config file

```
Host <short-name>
  HostName <host-url>
  User <username>
  IdentityFile </path/to/private-key>
  Port <port-number>
```

```
chown $USER ~/.ssh/config
chmod 600 ~/.ssh/config
```
