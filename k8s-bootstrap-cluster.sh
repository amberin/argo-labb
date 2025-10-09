#! /bin/bash

# 0. Install Helm and add Argo CD repository
# dnf install helm
 
# 1. Install Argo CD using Helm
helm install argo-cd cluster-infra-apps/argo-cd -n argo-cd --create-namespace

# 2. Deploy cluster infra apps
kubectl -n argo-cd apply -f cluster-infra-apps.yaml

# 3. Get Argo CD admin secret
kubectl -n argo-cd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
