#!/bin/bash

# Project config
export PROJECT_NAME="build_gpt_from_scratch"
export PROJECT_DIR="$HOME/workspace/build_gpt_from_scratch" # e.g. "$HOME/workspace/example_project"

# Configure RUN_NAME
# export RUN_NAME="example_project"

# Weights and biases env
export WANDB_BASE_URL="http://experiments.transit-gcp.cloud.corpintra.net"
# the ad-research service user api key, use your personal key or a project specific
# service user api key for your own project instead
export WANDB_API_KEY="local-7b76b6241111efdd9e6bcf20197c102570745cb2"
export WANDB_PROJECT=$PROJECT_NAME
export WANDB_USERNAME="onainak"
export WANDB_USER_EMAIL="onat.inak@mercedes-benz.com"

# Flyte env
export FLYTE_DEFAULT_PROJECT=research 
export FLYTE_DEFAULT_DOMAIN=prod