#!/bin/sh

# No more support Windows
VIMRC=".vimrc"
GVIMRC=".gvimrc"
NVIMRC=".config/nvim/init.vim"
VIMPF=".vim"
NVIMPF=".config/nvim"
VIM="vim"

cd ..

# .nvim
ln -sf ~/$VIMPF $NVIMPF

# vimrc
ln -sf $VIMPF/vimrc $VIMRC
ln -sf ~/$VIMPF/vimrc $NVIMRC
ln -sf $VIMPF/gvimrc $GVIMRC

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
