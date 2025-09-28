#! /bin/bash

# 0. Install Helm and add Argo CD repository
# dnf install helm
 
# 1. Install Argo CD using Helm
helm install cluster-infra-apps/argo-cd -n argo-cd --generate-name --create-namespace

# 2. Deploy cluster infra apps
kubectl -n argo-cd apply -f cluster-infra-apps.yaml
