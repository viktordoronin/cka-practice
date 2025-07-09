#1
kubectl create -f https://raw.githubusercontent.com/kubernetes/website/master/content/en/examples/debug/counter-pod.yaml
#2 - this pod prints an empty log entry every second
kubectl logs pod/counter
