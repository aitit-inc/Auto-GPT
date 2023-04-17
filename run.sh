#!/bin/sh
set -eux

docker run -it --env-file=./.env \
  -v $PWD/auto_gpt_workspace:/home/appuser/auto_gpt_workspace \
  -v $PWD/logs:/home/appuser/logs \
  -v $PWD/memory:/home/appuser/memory \
  autogpt \
  --continuous
