#!/bin/bash
#
# The entry point for automatic installation. Usage: auto-install.sh [nvim]

VIM_HOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[[ -e "$VIM_HOME" ]] && die "~/.vim already exists."
if [[ $1 == "nvim" ]]; then
    [[ -e ~/.config/nvim/init.vim ]] && die "~/.config/nvim/init.vim already exists."
else
    [[ -e ~/.vimrc ]] && die "~/.vimrc already exists."
fi

git clone https://github.com/nimo1491/vimrc.git "$VIM_HOME" ||
    die "Failed to clone vimrc repository."

"$VIM_HOME"/install.sh "$1" || die "Failed to invoke installation process."
