#!/usr/bin/env bash

img=flowci/pyenv:1.3
docker build -t ${img} .
echo "Image ${img} has been built"