#!/usr/bin/env bash

dockerpath="ankurshishodia12/flaskapp"

# Run in Docker Hub container with kubernetes
kubectl run flaskskearlndemo\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=flaskappdemo

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward flaskappdemo 8000:80