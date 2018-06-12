#!/bin/bash

buildNumber=$bamboo_buildNumber

version="0."+$buildNumber+".0"

sed 's/0.1.0/$version/g' ./helm/devops/Chart.yaml
