#!/bin/bash
DOCKER_IMAGE="your-dockerhub-username/devops-cicd"

docker pull $DOCKER_IMAGE
docker stop flask-app || true
docker rm flask-app || true
docker run -d --name flask-app -p 5000:5000 $DOCKER_IMAGE
