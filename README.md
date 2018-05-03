# hadoop-kubernetes
## Requirements

- Kubernetes 1.8+
## Demo

## Getting started
### Create and destroy an hadoop cluster
```bash
$ cd yaml/
$ kubectl create configmap hadoop-config --from-file=hadoop-conf/
$ kubectl create -f .
$ kubectl get po
NAME                READY     STATUS    RESTARTS   AGE
zengh-hadoop-dn-0   1/1       Running   0          45m
zengh-hadoop-dn-1   1/1       Running   0          45m
zengh-hadoop-nm-0   1/1       Running   0          45m
zengh-hadoop-nm-1   1/1       Running   0          45m
zengh-hadoop-nn-0   1/1       Running   0          45m
zengh-hadoop-rm-0   1/1       Running   0          45m
```
