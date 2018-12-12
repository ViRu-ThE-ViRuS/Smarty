#!/bin/bash

_red_=`tput setaf 1`
_green_=`tput setaf 2`
_reset_=`tput sgr0`

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

cd $DIR

echo "${_green_}setting up database${_reset_}"
source scripts/prepare_db.sh

echo "${_green_}starting the server${_reset_}"
python Smarty/manage.py runserver
