#!/bin/bash

#create env if not present
/usr/local/bin/kubectl create ns test

#kubectl run hello-dotnet --image=sugendh/dotnetcorebmb:latest --port=8080 -n test
#kubectl expose deployment hello-dotnet --type=LoadBalancer --port=8080 -n test

rm -rf helm
/usr/local/bin/helm repo add helm http://35.224.229.155/artifactory/helm-local
/usr/local/bin/helm repo update

#helm install
/usr/local/bin/helm install --namespace test --name dotnetcorebmb-latest-test --set image.repository=sugendh/dotnetcorebmb,image.tag=latest helm/devops

#helm upgrade
#/usr/local/bin/helm upgrade --install --namespace test dotnetcorebmb-latest-test --set image.repository=sugendh/dotnetcorebmb,image.tag=latest helm/devops
