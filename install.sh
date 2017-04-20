#!/bin/sh

# No more support Windows
VIMRC=".vimrc"
VIMPF=".vim"
VIM="vim"

cd ..

# vimrc
ln -sf $VIMPF/vimrc $VIMRC

# install vundle plugins
echo "install plugins..."
cd $VIMPF
$VIM +PlugInstall +qall

# update submodule
git submodule update

# install YCM
cd plugged/YouCompleteMe
./install.py --clang-completer

# finish
cd ../../../
echo "done"
