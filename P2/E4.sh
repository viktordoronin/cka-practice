#1
kubectl create deployment nginx --image=nginx --replicas=3
#2
kubectl patch deployments.apps nginx -p '{"spec": {"replicas":5}}'
#3
kubectl patch deployments.apps nginx -p '{"spec": {"replicas":3}}'
#a nicer way would be to use kubectl scale but I honestly can't be arsed remembering all those commands that only do one thing
