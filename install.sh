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
$VIM +PluginInstall +qall

# npm install tern
# check npm first
# if "npm" > /dev/null 2>&1; then
#     echo "npm exists..."
#     echo "install tern_for_vim..."
#     cd bundle/tern_for_vim/
#     npm install
# else
#     echo "npm doesn't exist..."
#     echo "failed to install tern_for_vim..."
# fi
