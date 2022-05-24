#!/bin/bash

echo 'JupyterLab for Geo-Spatial :: Build Image'

source ./env.sh

BASE_CONTAINER='docker.io/jupyter/pyspark-notebook:spark-3.2.1'

time_start=`date +%s` \
&& podman build --rm \
    --tag $IMAGE \
    --build-arg BASE_CONTAINER=$BASE_CONTAINER \
    . \
&& time_end=`date +%s`
time_total=$((time_end - time_start))

echo "Build End - time: $time_total sec."
