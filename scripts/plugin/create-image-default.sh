#!/bin/bash
IMAGE_NAME=bankapplication/default-image

pushd ../../

./mvnw spring-boot:build-image -DskipTests=true -Dspring-boot.build=image.imageName=$IMAGE_NAME

docker image ls | grep $IMAGE_NAME