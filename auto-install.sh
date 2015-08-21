#!/bin/sh
VIMHOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "$VIMHOME/vimrc" ] && die "$VIMHOME/vimrc already exists."
[ -e "~/.vim" ] && die "~/.vim already exists."
[ -e "~/.vimrc" ] && die "~/.vimrc already exists."
[ -e "~/.nvim" ] && die "~/.nvim already exists."
[ -e "~/.nvimrc" ] && die "~/.nvimrc already exists."

git clone https://github.com/nimo1491/vimrc-temp.git "$VIMHOME"
cd "$VIMHOME"
# if vundle
# git submodule update --init
# if vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

./install.sh
echo "nimo's vimrc is installed."

