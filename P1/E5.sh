#not gonna bother running this in minikube, just describe how to do it as per etcd.io docs:
#1
etcdctl --endpoints=$ENDPOINT snapshot save snapshot.db
#2
etcdutl --endpoints=$ENDPOINTS snapshot status snapshot.db -w simple
#3
etcdutl snapshot restore snapshot.db --data-dir output-dir
