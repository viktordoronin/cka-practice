#first, you need to upgrade your kubeadm using your package manager
#then you want to migrate the kubeadm instance that is running onto the new installation:
kubeadm upgrade plan
#kubeadm will tell you what you need to do, after that you upgrade the actual nodes:
kubectl drain <node> # stop pods on a node
#upgrade kubelet and kubectl on this node and restart them
kubectl uncordon <node> # allow pods back on the node
#do this for all control nodes first, then worker nodes. do not start upgrade on a new node before the previous one finishes upgrading
