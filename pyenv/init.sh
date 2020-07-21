#!/usr/bin/env bash

loc=$(dirname $BASH_SOURCE)

export PYENV_ROOT=$loc/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv rehash
pyenv global 3.6.10

libdir=/usr/local/lib

cp $loc/lib/libssl.* $libdir
ln -s $libdir/libssl.so.1.0.0 $libdir/libssl.so

cp $loc/lib/libcrypto.* $libdir
ln -s $libdir/libcrypto.so.1.0.0 $libdir/libcrypto.so

ldconfig