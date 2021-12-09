# NIMO'S VIMRC
https://github.com/nimo1491/vimrc


## PREREQUISITE

* [ctags](http://ctags.sourceforge.net/)
* [ripgrep](https://github.com/BurntSushi/ripgrep)
* [fzf](https://github.com/junegunn/fzf)

Install clangd, nodejs and yarn for coc.nvim. Check out:

* [coc.nvim](https://github.com/neoclide/coc.nvim)


## ONE-STEP INSTALL

Use curl:

```bash
    $ curl -L https://raw.github.com/nimo1491/vimrc/master/auto-install.sh | bash
```

or wget:

```bash
    $ wget -O - https://raw.github.com/nimo1491/vimrc/master/auto-install.sh | bash
```

If using nvim:

```bash
    $ curl -L https://raw.github.com/nimo1491/vimrc/master/auto-install.sh | bash -s nvim
```


## MANUALLY INSTALL

* Check out from github and then install it

```bash
    $ git clone https://github.com/nimo1491/vimrc ~/.vim
    $ cd ~/.vim
    $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    $ ./install.sh
```


## UPGRADE PLUGIN

Launch `vim` and run `:PlugInstall`

To install from command line: `vim +PlugInstall +qall`


REFERENCES
----------

* https://github.com/moskytw/mosky.vim
* https://github.com/junegunn/dotfiles
* https://github.com/ycavatars/vimrc
* https://github.com/othree/rc.git
* https://github.com/vgod/vimrc.git
* https://github.com/carlhuda/janus.git
