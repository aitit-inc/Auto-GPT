#!/bin/sh
set -eux

docker build -t autogpt .

echo '{}' > ./memory/auto-gpt.json
