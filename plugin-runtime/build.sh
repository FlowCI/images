#!/usr/bin/env bash

img=flowci/plugin-runtime

docker build -t ${img} .
echo "Image ${img} has been built"