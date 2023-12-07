#!/usr/bin/env bash

img=flowci/mongosh
ver=1.0

docker buildx create --name builder --use --bootstrap

docker buildx build \
    --push \
    --platform linux/amd64,linux/arm64/v8 \
    --tag ${img}:latest \
    --tag ${img}:${ver} \
    ./mongosh

echo "Image ${img}:${ver} has been built"