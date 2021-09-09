#!/usr/bin/env bash

img=flowci/pyenv:latest
docker build -t ${img} .
echo "Image ${img} has been built"