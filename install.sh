#!/bin/sh

# .vimrc for linux, _vimrc for windows
# .gvimrc for linux, _gvimrc for windows
# .vim for linux, vimfiles for windows
SYSTEM=`uname -s`

if [ $SYSTEM == "Linux" ] || [ $SYSTEM == "Darwin" ]; then
    VIMRC=".vimrc"
    GVIMRC=".gvimrc"
    NVIMRC=".nvimrc"
    VIMPF=".vim"
    NVIMPF=".nvim"
    VIM="vim"
else
    VIMRC="_vimrc"
    GVIMRC="_gvimrc"
    VIMPF="vimfiles"
    VIM="gvim"
fi
cd ..

# .nvim
ln -sf $VIMPF $NVIMPF

# vimrc
ln -sf $VIMPF/vimrc $VIMRC
ln -sf $VIMPF/vimrc $NVIMRC
ln -sf $VIMPF/gvimrc $GVIMRC

# install vundle plugins
echo "install plugins..."
cd $VIMPF
$VIM +PlugInstall +qall

# update submodule
git submodule update

# install YCM
cd plugged/YouCompleteMe
./install.sh --clang-completer

# finish
cd ../../../
echo "done"
