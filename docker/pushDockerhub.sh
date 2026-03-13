#!/bin/bash
set -e

CONTAINER_NAME=dockge-optimized
VERSION=1.5.0

sudo docker login -u admin@knf.vu.lt
sudo docker build -f Dockerfile.optimized -t $CONTAINER_NAME --target release ..
sudo docker tag $CONTAINER_NAME vuknf/$CONTAINER_NAME:latest
sudo docker tag $CONTAINER_NAME vuknf/$CONTAINER_NAME:$VERSION
sudo docker push vuknf/$CONTAINER_NAME:latest
sudo docker push vuknf/$CONTAINER_NAME:$VERSION
