#!/bin/bash

# images
IMAGE_BASE='docker.io/mintspecter/geospatial-notebook'
IMAGE_TAG='pyspark-3.2.1'
IMAGE="$IMAGE_BASE:$IMAGE_TAG"

# env
NB_UID="1000"
NB_GID="100"
