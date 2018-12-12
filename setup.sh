#!/bin/bash

_red_=`tput setaf 1`
_green_=`tput setaf 2`
_reset_=`tput sgr0`

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

cd $DIR

echo "${_green_}installing virtualenv${_reset_}"
sudo pip3 install virtualenv

# install virtual environment
echo "${_green_}creating virtual environment${_reset_}"
virtualenv -p python3 ${DIR}/

# activate the virtual environment
echo "${_green_}activating virtual environment${_reset_}"
source bin/activate

# install all requirements
echo "${_green_}installing dependencies${_reset_}"
pip install -r requirements.txt

# install pre-commit hooks
echo "${_green_}installing custom hooks${_reset_}"
source scripts/install-hooks.sh
