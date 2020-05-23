#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=xumingwang1992/udacitydevops-project4-sklearn

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=xumingwang1992
docker tag sklearnapp xumingwang1992/udacitydevops-project4-sklearn:sklearnapp
# Step 3:
# Push image to a docker repository
docker push xumingwang1992/udacitydevops-project4-sklearn:sklearnapp