#!/bin/bash

# Pushing the Helm chart
# Note - this uses the Artifactory API. You can replace it with any other solution you use.

#HELM_USR="admin"
#HELM_PSW="AP5hcKwvDY7Amewp"
#HELM_REPO="http://23.101.135.43/artifactory/helm-local/"

    echo -e "\nPushing Helm chart"

    chart_name=$(ls -1 pkg/helm/*.tgz 2> /dev/null)
    echo "Helm chart: ${chart_name}"

    [ ! -z "${chart_name}" ] || errorExit "Did not find the helm chart to deploy"
    curl -u${bamboo.HELM_USR}:${bamboo.HELM_PSW} -T ${chart_name} "${bamboo.HELM_REPO}/$(basename ${chart_name})" || errorExit "Uploading helm chart failed"
