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

git clone https://github.com/nimo1491/vimrc.git "$VIMHOME"
cd "$VIMHOME"
cp -f vimrc_min vimrc
git submodule update --init

./install.sh
echo "nimo's vimrc is installed."

