#!/usr/bin/env bash

img=flowci/debian-docker
ver=1.0

docker build -t ${img}:${ver} -t ${img}:latest .
echo "Image ${img}:${ver} has been built"