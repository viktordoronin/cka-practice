#I use minikube for this project but here's how to do it using kubeadm (I assume you have a machine with kubeadm up and running):

#master node
kubeadm init --pod-network-cidr=10.244.0.0/16
#This will output a kubeadm join command you'll need to run in your worker node, similar to Docker Swarm:
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
#execute the join on the worker node and you're good to go
