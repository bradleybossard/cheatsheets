# microk8s

### Start/stop service
```
microk8s.start   # start microk8s
microk8s.stop    # stop microk8s
microk8s.status  # shows running status and plugins
```

### Enable/disable plugins
```
microk8s.enable <plugin1> <plugin2>
microk8s.disable <plugin1> <plugin2>
```


### Usage
```
microk8s.kubectl get nodes
microk8s.kubectl get services
```

### Alias
```
snap alias microk8s.kubectl kubectl       # Set snap shorthand alias
snap unalias kubectl                      # Remove alias
snap aliases                              # Lists all aliases
```


### Links

[User Guide | MicroK8s](https://microk8s.io/docs/)
