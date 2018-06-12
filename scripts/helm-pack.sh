#!/bin/bash

#Helm pack
    echo -e "\nPacking Helm chart"

    [ -d pkg/helm ] && rm -rf pkg/helm
    mkdir -p pkg/helm

    /usr/local/bin/helm package -d pkg/helm helm/devops || errorExit "Packing helm chart helm/devops failed"

