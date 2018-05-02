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
```
