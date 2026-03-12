#!/bin/bash

echo "Building new docker image..."
docker build -t devops-lab-web .

echo "Stopping old container..."
docker stop devops-container 2>/dev/null

echo "Removing old container..."
docker rm devops-container 2>/dev/null

echo "Starting new container..."
docker run -d -p 8088:80 --name devops-container devops-lab-web

echo "Devlopment Complete!!!! :)"

