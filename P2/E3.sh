#1,2,3
kubectl create secret generic mysecret --from-literal=dbuser=MyDatabaseUser --from-literal=dbpassword=MyDatabasePassword
#4,5,6
kubectl create -f E3.yaml
