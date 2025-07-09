#!/bin/bash
#1 I'm a sick man that loves to streamline everything so here goes:
for pod in $(kubectl get pods -o name -n=kube-system)
do
    echo -e "\n========== $pod logs ==========\n"
    kubectl logs -n=kube-system --tail=5 $pod 
done
#2
kubectl events list
#3 seen in Part 1 of the repo
