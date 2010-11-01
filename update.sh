#!/bin/sh

cd ~/.vim
git pull --rebase
git submodule init
git submodule update
