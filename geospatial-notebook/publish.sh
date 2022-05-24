#!/bin/bash

echo 'JupyterLab for Geo-Spatial :: Publish Image'

source ./env.sh

time_start=`date +%s` \
&& podman tag $IMAGE "$IMAGE_BASE:latest" \
&& podman push $IMAGE \
&& podman push "$IMAGE_BASE:latest" \
&& time_end=`date +%s` \

time_total=$((time_end - time_start))

echo "Publish End - time: $time_total"
