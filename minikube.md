# minikube

## Starting minikube with kvm2 driver

`minikube start --vm-driver=kvm2`

If you get an error about "network 'minikube-net' is not active'", you need to
manually start the minikube network with virsh doing the following

```
virsh
net-list --all            # To ensure minikube-net exists and is inactive
net-start minikube-net    # To start the network
quit
minikube start --vm-driver=kvm2
