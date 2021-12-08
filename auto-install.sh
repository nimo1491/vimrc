#!/bin/bash
VIM_HOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "~/.vim" ] && die "~/.vim already exists."
if [[ $1 == "nvim" ]]; then
    [ -e "~/.config/nvim/init.vim" ] && die "nvimrc already exists."
else
    [ -e "~/.vimrc" ] && die "vimrc already exists."
fi

git clone https://github.com/nimo1491/vimrc.git "$VIM_HOME"

cd "$VIM_HOME"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

./install.sh $1

