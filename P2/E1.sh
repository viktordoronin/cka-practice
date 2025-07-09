#1
kubectl create deployment nginx --replicas=6 --image=nginx:1.19.5
#2
kubectl get deployments.apps nginx -o jsonpath="{...strategy}"
#3
kubectl patch deployments.apps nginx -p '{"spec": {"strategy": {"rollingUpdate": { "maxSurge":50,"maxUnavailable"}}}}'
#4
kubectl set image deployment nginx nginx=nginx:1.19.6 --record=true
#5
kubectl rollout undo deployment nginx
