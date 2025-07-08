#!/bin/bash
#1
kubectl create namespace rbac
#2
kubectl create serviceaccount job-inspector -n=rbac
#3
kubectl create role job_inspector_role --resource=job --verb=get --verb=list -n rbac
#4
kubectl create rolebinding job_insp_rb --serviceaccount=rbac:job-inspector --role=job_inspector_role -n=rbac
#5
kubectl auth can-i get job --as=system:serviceaccount:rbac:job-inspector -n=rbac
kubectl auth can-i get deployment --as=system:serviceaccount:rbac:job-inspector -n=rbac
