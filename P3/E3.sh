kubectl create ingress myingress --class=default \
  --rule="myingress.mydomain/=main:80" \
  --rule="myingress.mydomain/api/=api:8080"
