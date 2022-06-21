#!/bin/bash

source .env

image_name="${APP_NAME}_${ENV}"
container_name="${image_name}_container"

echo "image_name $image_name"
docker build -t "${image_name}" -f ./docker/docker_local/Dockerfile .
docker run -it --rm --name "${container_name}" -p 1337:1337 "$image_name"

