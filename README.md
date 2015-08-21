# NIMO'S VIMRC
https://github.com/nimo1491/vimrc


## PREREQUISITE

* [Ctags](http://ctags.sourceforge.net/) (*tagbar*)
* [The Silver Searcher](http://geoff.greer.fm/ag) (*ack.vim*)

Install development tool, CMake, and Python headers for YouCompleteMe in Ubuntu

```bash
    $ sudo apt-get install build-essential cmake python-dev
```

## ONE-STEP INSTALL

Use curl:

```bash
    $ curl -L https://raw.github.com/nimo1491/vimrc/master/auto-install.sh | sh
```

or wget:

```bash
    $ wget -O - https://raw.github.com/nimo1491/vimrc/master/auto-install.sh | sh
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
