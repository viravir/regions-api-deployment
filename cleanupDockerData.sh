#!/bin/bash

# check if we need to use sudo
docker ps > /dev/null 2>&1
exitStatus=$?

if [ exitStatus -ne 0 ]; then
  DOCKER_CMD='sudo docker'
else
  DOCKER_CMD='docker'
fi

${DOCKER_CMD} system prune -a && ${DOCKER_CMD} volume prune
