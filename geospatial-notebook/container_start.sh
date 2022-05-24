#!/bin/bash

# default nb uid:gid
NB_UID=1000
NB_GID=100

# fixed owner
sudo chown -R $NB_UID:$NB_GID ./data

# fixed permission (Can write)
source ./container_env.sh

# start up
docker-compose up -d
