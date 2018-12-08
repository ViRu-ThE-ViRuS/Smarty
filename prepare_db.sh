#!/bin/bash

_red_=`tput setaf 1`
_green_=`tput setaf 2`
_reset_=`tput sgr0`

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

echo "${_green_}running database migrations${_reset_}"
python "$DIR/Smarty/manage.py" makemigrations
python "$DIR/Smarty/manage.py" migrate
