#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
dockerpath="chmarowisko/ml-microservice-kubernetes"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run "ml-test-pod" \
    --image=$dockerpath \
    --port=80 \
    --labels="app=ml-microservice-kubernetes"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/ml-test-pod 8000:80

#$SHELL