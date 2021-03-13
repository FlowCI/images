#!/usr/bin/env bash

img=flowci/valgrind
docker build -t ${img} .
echo "Image ${img} has been built"