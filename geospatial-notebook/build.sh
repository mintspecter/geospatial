#!/bin/bash

echo 'JupyterLab for Geo-Spatial :: Build Image'

source ./env.sh
BASE_CONTAINER='docker.io/jupyter/pyspark-notebook:spark-3.2.1'

docker build --rm \
    --tag $IMAGE \
    --build-arg BASE_CONTAINER=$BASE_CONTAINER \
    . \
&& echo "Docker Push Command
    $ docker push $IMAGE
"
