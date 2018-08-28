# minikube

## Starting minikube with kvm2 driver

`minikube start --vm-driver=kvm2`

## Commands

`minikube service list`            # List exposed services
`minikube service <service-name>`  # Open url for service
`minikube dashboard`               # Open dashboard in browser

### Debugging

If you get an error about "network 'minikube-net' is not active'", you need to
manually start the minikube network with virsh doing the following

```
virsh
net-list --all            # To ensure minikube-net exists and is inactive
net-start minikube-net    # To start the network
quit
minikube start --vm-driver=kvm2
```

or the minikube network can be set to automatically start at boot time with the command

```
virsh net-autostart --network minikube-net
```


If minikube hangs on "Starting cluster components" during start, then run
the following to delete and re-create the VM

```
minikube delete
minikube start --vm-driver=kvm2
```
