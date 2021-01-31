#!/bin/bash

# check if we need to use sudo
docker ps > /dev/null 2>&1
exitStatus=$?

if [ exitStatus -ne 0 ]; then
  DOCKER_COMPOSE_CMD='sudo docker-compose'
else
  DOCKER_COMPOSE_CMD='docker-compose'
fi

${DOCKER_COMPOSE_CMD} up -d --build
