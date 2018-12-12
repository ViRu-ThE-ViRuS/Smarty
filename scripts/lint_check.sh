#!/bin/bash

_red_=`tput setaf 1`
_green_=`tput setaf 2`
_reset_=`tput sgr0`

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

cd $DIR

echo "${_green_}running pylint${_reset_}"
pylint -j0 Smarty/**/*.py

echo "${_green_}lint_check complete${_reset_}"
