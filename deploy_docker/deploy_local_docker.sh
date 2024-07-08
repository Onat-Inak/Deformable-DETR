#!/bin/bash

# export PYTHONPATH=$PYTHONPATH:/workspace/:/workspace/projects
# python ./tools/train.py projects/configs/StreamPETR/stream_petr_vov_flash_800_bs2_seq_24e.py --work-dir work_dirs/stream_petr_vov_flash_800_bs2_seq_24e

# set -ex

# proxy to be used inside the docker, leave blank if you are not using
# a proxy server
# : "${INSIDE_DOCKER_PROXY:=172.17.0.1:3128}"

source $(dirname "$0")/set_project_env.sh
<<<<<<< HEAD
DATADIR="$HOME/data/datasets/tiny_shakespeare"
WORKDIR="$HOME/workspace/$PROJECT_NAME" 
MODELDIR="$HOME/data/models/build_gpt_from_scratch"
INFERENCE_MODELDIR="$HOME/data/inference_models/build_gpt_from_scratch"

# BACKBONEDIR="$HOME/data/backbones"

docker run \
=======
DATADIR="$HOME/data/datasets/nuscenes/v1.0-mini"
WORKDIR="$HOME/workspace/Deformable-DETR" 
# MODELDIR="$HOME/data/models"
# INFERENCE_MODELDIR="$HOME/data/inference_models"

# BACKBONEDIR="$HOME/data/backbones"

docker run\
>>>>>>> d423427ca11944f7f7d28766de4f230a56b9d243
    --user $USER \
    --shm-size=8gb \
    --gpus all \
    --mount type=bind,source=$WORKDIR,target=/workspace \
<<<<<<< HEAD
    --mount type=bind,source=$DATADIR,target=/workspace/data/dataset/tiny_shakespeare \
    --mount type=bind,source=$MODELDIR,target=/workspace/models \
    --mount type=bind,source=$INFERENCE_MODELDIR,target=/workspace/inference_models \
=======
    --mount type=bind,source=$DATADIR,target=/workspace/data/nuscenes \
>>>>>>> d423427ca11944f7f7d28766de4f230a56b9d243
    -e PROJECT_NAME=$PROJECT_NAME \
    -e WANDB_BASE_URL=$WANDB_BASE_URL \
    -e WANDB_API_KEY=$WANDB_API_KEY \
    -e WANDB_USERNAME=$WANDB_USERNAME \
    -e IS_LOCAL_RUN=1 \
    -it \
<<<<<<< HEAD
    --name=build_gpt_from_scratch \
    build_gpt_from_scratch:v1.0
=======
    --name=deformable_detr \
    deformable_detr:v1.0
>>>>>>> d423427ca11944f7f7d28766de4f230a56b9d243
