#!/bin/bash

#create env if not present
/usr/local/bin/kubectl create ns staging

#kubectl run hello-dotnet --image=sugendh/dotnetcorebmb:latest --port=8080 -n staging
#sleep 60
#kubectl expose deployment hello-dotnet --type=LoadBalancer --port=8080 -n staging

rm -rf helm
helm repo add helm http://35.224.229.155/artifactory/helm-local
helm repo update
helm upgrade --install --namespace staging dotnetcorebmb-latest-master --set image.repository=sugendh/dotnetcorebmb,image.tag=latest helm/devops
