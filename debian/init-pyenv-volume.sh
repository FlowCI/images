#!/usr/bin/env bash

cp -r /root/.pyenv /target
echo '.pyenv dir copied'

cp /ws/init.sh /target
echo 'init.sh copied'

cp -r /ws/lib /target
echo 'lib copied'

echo 'Success'