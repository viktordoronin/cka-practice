#1 you can run this just to check, but the map is usually called coredns
kubectl get cm -n=kube-system
#then, you cannot patch the coredns CM so you'd have to use the edit command
#2 - replace whatever the "forward" directive points to with 8.8.8.8
#4 - you'll need a new directive:
# custom.local {
#        forward . 10.5.4.223
#         }
#3 - coredns only resolves cluster's hostnames by default so if you direct the rest to an actual DNS server you'll be able to reach any website, just ping google.com or whatever
