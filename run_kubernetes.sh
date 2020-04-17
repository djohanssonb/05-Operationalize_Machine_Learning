#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=57192472048/05-machinelearning

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run 05-machinelearning --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host after waiting a minute
sleep 60
kubectl port-forward deployment/05-Mmachinelearning 8000:80 
kubectl logs --selector app=05-machinelearning
