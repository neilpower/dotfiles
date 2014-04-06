#!/bin/bash
mkdir ~/ycm_build
cd ~/ycm_build

shane cmake \
    -G "Unix Makefiles" \
    -DPYTHON_LIBRARY=~/bin/python/lib/libpython2.7.so \
    -DPYTHON_INCLUDE_DIR=~/bin/python/include/python2.7 \
    -DPATH_TO_LLVM_ROOT=~/bin/llvm \
    . ~/.vim/bundle/YouCompleteMe/cpp
shane make

cd ~
rm -rf ycm_build
