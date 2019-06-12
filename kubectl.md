# kubectl

## Abbreviations
```
po    # pods
rc    # replication controller
svc   # services
```


## Cluster info
```
kubectl cluster-info               # see status of cluster
kubectl get nodes                  # see nodes in cluster
kubectl describe node <nodename>   # describe a node
kubectl describe node              # describe all nodes
```

## Creating pods
```
kubectl run <podname> --image=<image-path> --port=<port-number> --generator=run-pod/v1    # create one-off pod with one container
```

## Inspecting pods
```
kubectl get pods                # list pods
kubectl describe <podname>      # describe a pod

```

## Services
```
kubectl expose rc <rc_name> --type=LoadBalancer --name <service_name>      # create a service for an rc
kubectl get services                                                       # list services
```

### Links

[kubectl Cheat Sheet - Kubernetes](https://kubernetes.io/docs/reference/kubectl/cheatsheet/#deleting-resources)
