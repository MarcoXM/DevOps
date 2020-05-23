#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=$1 . --label=$1

# Step 2: 
# List docker images
docker image ls --filter label=sklearnapp

# Step 3: 
# Run flask app
docker run -it -p 8000:8000 $1
