#!/bin/bash

set -ex

# proxy to be used inside the docker, leave blank if you are not using
# a proxy server
<<<<<<< HEAD
: "${INSIDE_DOCKER_PROXY:=172.17.0.1:3128}"

# we set the docker name to the project name and use the tag to indicate
# the version/env 
: "${PROJECT_NAME:=build_gpt_from_scratch}"
: "${DOCKER_TAG:=v1.0}"
# # # # # # # # # # #
# BUILD
# # # # # # # # # # #

# actual build
docker build --network=host\
  --build-arg INSIDE_DOCKER_PROXY=$INSIDE_DOCKER_PROXY \
  --build-arg HOST_UNAME=$USER \
  --build-arg HOST_UID=$(id -u) \
  --build-arg HOST_GID=$(id -g) \
  -t $PROJECT_NAME:$DOCKER_TAG \
  -f docker/Dockerfile .
=======
: "${INSIDE_DOCKER_PROXY:=http://127.0.0.1:3128}"
#   --build-arg INSIDE_DOCKER_PROXY=$INSIDE_DOCKER_PROXY \

# actual build
docker build --no-cache --network=host \
  --build-arg http_proxy=$INSIDE_DOCKER_PROXY \
  --build-arg https_proxy=$INSIDE_DOCKER_PROXY \
  --build-arg HOST_UNAME=$USER \
  --build-arg HOST_UID=$(id -u) \
  --build-arg HOST_GID=$(id -g) \
  -t deformable_detr:v1.0 \
  -f docker/Dockerfile .

>>>>>>> d423427ca11944f7f7d28766de4f230a56b9d243
