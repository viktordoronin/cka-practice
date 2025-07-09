#1
kubectl create -f https://raw.githubusercontent.com/David-VTUK/CKAExampleYaml/master/nginx-svc-and-deployment.yaml
#2 - we get the selector by describing the deployment and looking at pod template
kubectl get pods -l app=nginx -o wide
#3
#per k8s docs, service domain name has form: my-svc.my-namespace.svc.cluster-domain.example
#we can get the name and namespace by describing the service, now we need the cluster domain name
#the default is cluster.local, we can verify by consulting /etc/resolv.conf of any container or using kube-dns/coredns
#so in our case it's nginx-service.default.svc.cluster.local
