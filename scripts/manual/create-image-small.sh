#!/bin/bash
IMAGE_NAME=bankapplication/small-image

pushd ../../

mvn clean install -DskipTests=true

docker build -t $IMAGE_NAME .

docker image ls | grep $IMAGE_NAME