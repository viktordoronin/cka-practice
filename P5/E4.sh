kubectl create -f https://raw.githubusercontent.com/David-VTUK/CKAExampleYaml/master/nginx-svc-and-deployment-broken.yaml
#1 - as discussed in P3E1, it should be nginx-service.default.svc.cluster.local
#this pod has curl too so we'll be using this one
kubectl create -f https://k8s.io/examples/admin/dns/dnsutils.yaml
#this works as expected and gives us some info
kubectl exec -it dnsutils -- nslookup nginx-service.default.svc.cluster.local
#this however fails, refusing connection on port 80:
kubectl exec -it dnsutils -- curl nginx-service.default.svc.cluster.local
#Troubleshooting steps:
#kubectl describe shows us that the service listens on port 80, reroutes it to port 8080 on some endpoints
#when we probe those endpoints they refuse connection
#upon looking at the pod describe(or the pod template inside the deployment) we can see that the pods aren't listening on port 8080, just 80
#we can fix this by either rectifying the service to redirect to port 80 on the pods, or making the pods listen on port 8080
