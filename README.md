# hadoop-kubernetes
## Requirements
- hadoop 2.7.5
- Kubernetes 1.8+
## Demo

## Getting started
### Create an hadoop cluster
```bash
$ cd yaml/
$ kubectl create configmap hadoop-config --from-file=hadoop-conf/
$ kubectl create -f .
$ kubectl get po
NAME                READY     STATUS    RESTARTS   AGE
dahaian-hadoop-dn-0   1/1       Running   0          45m
dahaian-hadoop-dn-1   1/1       Running   0          45m
dahaian-hadoop-nm-0   1/1       Running   0          45m
dahaian-hadoop-nm-1   1/1       Running   0          45m
dahaian-hadoop-nn-0   1/1       Running   0          45m
dahaian-hadoop-rm-0   1/1       Running   0          45m

$ kubectl get svc
NAME                  TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)                                        AGE
dahaian-hadoop-dn       ClusterIP   None          <none>        9000/TCP,50075/TCP,50010/TCP                   50m
dahaian-hadoop-nm       ClusterIP   None          <none>        8088/TCP,8082/TCP,8042/TCP                     50m
dahaian-hadoop-nn       ClusterIP   None          <none>        9000/TCP,50070/TCP,50010/TCP                   50m
dahaian-hadoop-rm       ClusterIP   None          <none>        8032/TCP,8025/TCP,8030/TCP,8021/TCP,8088/TCP   50m
dahaian-hadoop-rm-svc   ClusterIP   10.254.8.86   <none>        8088/TCP,20888/TCP,19888/TCP,10020/TCP         50m
```

