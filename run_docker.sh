#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag

docker build --tag=05-machinelearning .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app locally
winpty docker run -p 8000:80 -it 05-machinelearning

# Old syntax
# docker run -d -p 8000:80 05-machinelearning


