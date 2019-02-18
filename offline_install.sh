#!/usr/bin/env bash

# No more support Windows
declare -r VIMRC=".vimrc"
declare -r YCMCONF=".ycm_extra_conf.py"

cd "$(dirname "${BASH_SOURCE[0]}")"
vim_base="$(pwd)"

# vimrc and ycm conf
ln -sf $vim_base/vimrc $HOME/$VIMRC
ln -sf $vim_base/ycm_extra_conf.py $HOME/$YCMCONF

# finish
echo "done"
