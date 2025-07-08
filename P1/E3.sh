#Again, we're dealing with minikube here
#"server" cert and key work for this too
#health check
kubectl exec -n=kube-system -it etcd-minikube -- etcdctl --cacert=/var/lib/minikube/certs/etcd/ca.crt --key=/var/lib/minikube/certs/etcd/healthcheck-client.key --cert=/var/lib/minikube/certs/etcd/healthcheck-client.crt endpoint health --cluster
#listing members
kubectl exec -n=kube-system -it etcd-minikube -- etcdctl --cacert=/var/lib/minikube/certs/etcd/ca.crt --key=/var/lib/minikube/certs/etcd/healthcheck-client.key --cert=/var/lib/minikube/certs/etcd/healthcheck-client.crt member list
#probing API - it's trivial to curl this as per K8s docs, on the minikube you do this on your host machine
#the tricky bit is that the port number might be different, an easy way to check this:
kubectl cluster-info
#that will tell you where the control plane is running, that's your API endpoint you want to curl:
curl -k https://localhost:3630/livez?verbose
