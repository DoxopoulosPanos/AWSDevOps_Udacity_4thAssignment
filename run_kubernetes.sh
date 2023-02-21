#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=panosdoxos/prediction_api

# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl -- run predictionapp --image=panosdoxos/prediction_api --port=80


# Step 3:
# List kubernetes pods
minikube kubectl get pods

# Step 4:
# Forward the container port to a host
minikube kubectl port-forward predictionapp 8000:80

