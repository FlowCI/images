#!/usr/bin/env bash

img=flowci/plugin-runtime:1.0
docker build -t ${img} .
echo "Image ${img} has been built"