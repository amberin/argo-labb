#! /bin/bash

# 0. Install Helm and add Argo CD repository
# dnf install helm
helm repo add argo-cd https://argoproj.github.io/argo-helm
 
# 1. Install Argo CD using Helm chart
helm install argo-cd/argo-cd
helm install argo-cd/argo-cd --generate-name

# 2. Deploy "app of apps"
