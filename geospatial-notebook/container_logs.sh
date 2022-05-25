#!/bin/bash

# fixed permission (Can write)
. container_env.sh

# show logs
echo '
====================================================
Container logs are being tracked. Cntl + C to quit
====================================================
' \
&& docker-compose logs -f
