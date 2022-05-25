#!/bin/bash

# default nb uid:gid
NB_UID=1000
NB_GID=100

HOST_PORT=8888
HOST_IPV4=`hostname -I | awk '{print $1}'`

# fixed owner
sudo chown -R $NB_UID:$NB_GID ./data

# fixed permission (Can write)
source ./container_env.sh

# start up
docker-compose up -d \
&& echo "

* Open the URL in your browser
   URL:
     http://$HOST_IPV4:$HOST_PORT/lab?token=test
"
