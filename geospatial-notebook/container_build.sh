#!/bin/bash

echo 'JupyterLab for Geo-Spatial :: Build Image'

source ./container_env.sh

# images
IMAGE_BASE='docker.io/mintspecter/geospatial-notebook'
IMAGE_TAG='pyspark-3.2.1'
IMAGE="$IMAGE_BASE:$IMAGE_TAG"

# images argument
BASE_CONTAINER='docker.io/jupyter/pyspark-notebook:spark-3.2.1'

time_start=`date +%s`

docker build --rm \
    --tag $IMAGE \
    --build-arg BASE_CONTAINER=$BASE_CONTAINER \
    . \
&& docker tag $IMAGE "$IMAGE:latest"

time_end=`date +%s`

time_total=$((time_end - time_start))

echo "Build End - time: $time_total sec."
