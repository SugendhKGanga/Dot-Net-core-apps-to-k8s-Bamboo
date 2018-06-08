#!/bin/bash

#create env if not present
/usr/local/bin/kubectl create ns test

/usr/local/bin/kubectl run hello-dotnet --image=sugendh/dotnetcorebmb:latest --port=8080 -n test
sleep 60
/usr/local/bin/kubectl expose deployment hello-dotnet --type=LoadBalancer --port=8080 -n test
