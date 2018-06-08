#!/bin/bash

#create env if not present
/usr/local/bin/kubectl create ns test

kubectl run hello-dotnet --image=sugendh/dotnetcorebmb:latest --port=8080 -n test
sleep 60
kubectl expose deployment hello-dotnet --type=LoadBalancer --port=8080 -n test
