#!/bin/bash -e
if [ -z $1 ]; then
    echo "You need to provide a commit message"
    exit
fi

git submodule foreach git add -A .
git submodule foreach git commit -am "$1"

git add -A .
git commit -am "$1"