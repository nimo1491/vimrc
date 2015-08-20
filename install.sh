#!/bin/sh

# .vimrc for linux, _vimrc for windows
# .gvimrc for linux, _gvimrc for windows
# .vim for linux, vimfiles for windows
SYSTEM=`uname -s`

if [ $SYSTEM == "Linux" ] || [ $SYSTEM == "Darwin" ]; then
    VIMRC=".vimrc"
    GVIMRC=".gvimrc"
    VIMPF=".vim"
    VIM="vim"
else
    VIMRC="_vimrc"
    GVIMRC="_gvimrc"
    VIMPF="vimfiles"
    VIM="gvim"
fi
cd ..

# vimrc
ln -sf $VIMPF/vimrc $VIMRC
ln -sf $VIMPF/gvimrc $GVIMRC

# install vundle plugins
echo "install plugins..."
cd $VIMPF
$VIM +PlugInstall +qall

# update submodule
git submodule update

# finish
cd ..
echo "done"
