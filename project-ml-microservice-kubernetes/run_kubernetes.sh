#!/usr/bin/env bash
# https://minikube.sigs.k8s.io/docs/start/

dockerpath=xumingwang1992/udacitydevops-project4-sklearn

# Run in Docker Hub container with kubernetes
kubectl run sklearnapp \
    --image=$dockerpath:sklearnapp \
    --port=80 --label app=sklearnapp

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward sklearnapp 8000:80
