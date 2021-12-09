#!/bin/bash

# No more support Windows
VIMRC=".vimrc"
VIM_HOME=".vim"
NVIMRC="init.vim"

cd ..

# autoload
if [[ $1 == "nvim" ]]; then
    mkdir -p .local/share/nvim/site
    cd .local/share/nvim/site
    ln -sf ~/$VIM_HOME/autoload autoload
    cd ~
fi

# vimrc
if [[ $1 == "nvim" ]]; then
    mkdir -p .config/nvim
    cd .config/nvim
    ln -sf ~/$VIM_HOME/vimrc $NVIMRC
    ln -sf ~/$VIM_HOME/coc-settings.json coc-settings.json
    cd ~
else
    ln -sf $VIM_HOME/vimrc $VIMRC
fi

# install vundle plugins
echo "install plugins..."
cd $VIM_HOME
if [[ $1 == "nvim" ]]; then
    nvim +PlugInstall +qall
else
    vim +PlugInstall +qall
fi

# finish
cd ../../../
echo "done"
