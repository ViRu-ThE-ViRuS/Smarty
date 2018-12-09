#!/bin/bash

_red_=`tput setaf 1`
_green_=`tput setaf 2`
_reset_=`tput sgr0`

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

echo "${_green_}running autopep8${_reset_}"
cd ${DIR}/Smarty
find . -name '*.py' -exec autopep8 -j0 --aggressive --aggressive --in-place '{}' \;
cd ${DIR}

echo "${_green_}running pylint${_reset_}"
pylint -j0 ${DIR}/Smarty/**/*.py
