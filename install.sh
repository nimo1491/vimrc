#!/bin/bash
#
# Link the vimrc and install plugins. Usage: ./install.sh [nvim]

VIM_HOME=$(cd "$(dirname "$0")" && pwd)

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

cd ~ || die "Failed to change to the home directory."

# vim-plug
if ! [[ -f "$VIM_HOME"/autoload/plug.vim ]]; then
    curl -fLo "$VIM_HOME"/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim ||
        die "Failed to download vim-plug."
fi

# vimrc
if [[ $1 == "nvim" ]]; then
    mkdir -p .local/share/nvim/site .config/nvim
    ln -sfn "$VIM_HOME"/autoload .local/share/nvim/site/autoload
    ln -sf "$VIM_HOME"/vimrc .config/nvim/init.vim
    ln -sf "$VIM_HOME"/coc-settings.json .config/nvim/coc-settings.json
else
    ln -sf "$VIM_HOME"/vimrc .vimrc
fi

# plugins
echo "install plugins..."
if [[ $1 == "nvim" ]]; then
    nvim --headless +'PlugInstall --sync' +qall || warn "Failed to install plugins."
else
    vim +PlugInstall +qall || warn "Failed to install plugins."
fi

echo "done"
