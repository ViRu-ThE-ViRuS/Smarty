#!/bin/bash

_red_=`tput setaf 1`
_green_=`tput setaf 2`
_reset_=`tput sgr0`

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

if [[ "$VIRTUAL_ENV" != "${DIR}" ]]
then
	echo "${_green_}activating env${_reset_}"
  	source bin/activate
fi

echo "${_green_}running django-checks${_reset_}"
python "$DIR/Smarty/manage.py" check

echo "${_green_}running autopep8${_reset_}"
cd ${DIR}/Smarty
find . -name '*.py' -exec autopep8 -j0 --aggressive --aggressive --in-place '{}' \;
cd ${DIR}

source lint_check.sh

echo "${_green_}lint complete${_reset_}"
