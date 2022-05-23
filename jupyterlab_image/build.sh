#!/bin/bash

echo 'JupyterLab for Geo-Spatial :: Build Image'

BASE_CONTAINER='docker.io/jupyter/pyspark-notebook:spark-3.2.1'
IMAGE_BASE='mintspecter/geospatial-notebook'
IMAGE_TAG='pyspark-3.2.1'
IMAGE="$IMAGE_BASE:$IMAGE_TAG"

docker build --rm \
    --tag $IMAGE \
    --build-arg BASE_CONTAINER=$BASE_CONTAINER \
    . \
&& echo "Docker Push Command
    $ docker push $IMAGE
"
