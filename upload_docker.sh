#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=panosdoxos/prediction_api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag prediction_api:latest panosdoxos/prediction_api:latest

# Step 3:
# Push image to a docker repository
docker push panosdoxos/prediction_api:latest
