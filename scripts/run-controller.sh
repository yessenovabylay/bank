#!/bin/bash

IMAGE_KEY="default"
IMAGE_NAME="bankapplication/$IMAGE_KEY-image"
CONTAINER_NAME="application"

docker container stop $CONTAINER_NAME
docker container rm $CONTAINER_NAME
docker run --name $CONTAINER_NAME -p 8080:8080 -d $IMAGE_NAME