#1
kubectl create configmap mycm --from-literal=owner=yourname
#2 - let's ask K8s to make us a base template(commented out so that you don't overwrite the file):
#kubectl run nginx --image=nginx:1.19.5 --dry-run=client -o yaml > E2.yaml
#we proceed to edit the config then run it:
kubectl create -f E2.yaml
#now we can verify that the variable is there:
exec -it nginx -- printenv OWNER
