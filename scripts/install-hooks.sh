#!/bin/bash

_red_=`tput setaf 1`
_green_=`tput setaf 2`
_reset_=`tput sgr0`

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

cd $DIR

GIT_DIR=$(git rev-parse --git-dir)
ln -s $DIR/scripts/pre-commit.sh $GIT_DIR/hooks/pre-commit
