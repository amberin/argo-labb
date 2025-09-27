#! /bin/bash

# 0. Install Helm and add Argo CD repository
# dnf install helm
helm repo add argo-cd https://argoproj.github.io/argo-helm
 
# 1. Install Argo CD using Helm chart
helm install cluster-infra-apps/argo-cd

# 2. Deploy cluster infra apps
kubectl apply -f cluster-infra-apps.yaml
