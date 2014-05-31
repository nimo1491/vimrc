# NIMO'S VIMRC
https://github.com/nimo1491/vimrc


## PREREQUISITE

* [Ctags](http://ctags.sourceforge.net/) (*tagbar*)
* [Ack](http://betterthangrep.com/) (*ack.vim*)


## ONE-STEP INSTALL

Use curl (for Mac OS X):

```bash
    $ curl -L https://raw.github.com/nimo1491/vimrc/master/auto-install.sh | sh
```

or wget (for most UNIX platforms):

```bash
    $ wget -O - https://raw.github.com/nimo1491/vimrc/master/auto-install.sh | sh
```



## MANUALLY INSTALL

* Check out from github

```bash
    $ git clone https://github.com/nimo1491/vimrc ~/.vim
    $ cd ~/.vim
    $ cp -f vimrc_min vimrc
    $ git submodule update --init
```

* Install vimrc

```bash
    $ ./install.sh
```


## HOW TO INSTALL ON WINDOWS

* Execute git-bash. ("Run as administrator" if OS is Vista/Win7)

* Check out from github

```bash
    cd /c/Program\ Files/Vim
    rm -rf vimfiles
    git clone https://github.com/nimo1491/vimrc vimfiles
    cd vimfiles
    cp -f vimrc_min vimrc
    git submodule update --init
```

* Install vimrc. 

```bash
    ./install.sh
```


## UPGRADE PLUGIN 

Launch `vim` and run `:PluginInstall`

To install from command line: `vim +PluginInstall +qall`


# VIM CUSTOMIZATION


## VIMRC CUSTOMIZATION

The `one-step install` and the above examples are using `vimrc_min` which includes the basic plug-ins.

Try to use `vim_stab` which includes some completion plug-ins. You can trigger completion by press `<leader><tab>`.

`vim_ycm` is similar to `vim_stab` except it uses `YouCompleteMe` to trigger completion automatically.

**IMPORTANT** `tern_for_vim` and `YouCompleteMe` are needed to be compiled.

* `tern_for_vim`
```bash
$ cd ~/.vim/bundle/tern_for_vim
$ npm install
```

* `YouCompleteMe`
```bash
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.sh --clang-completer
```


## KEY BINDING

* `<leader>` - ','   
* `:cd.` - Change working directory to that of current file   
* `<leader>/` - Turn off searching highlighting   
* `<leader>p` - Toggles paste mode   
* `:w!!` - Force writing if you forgot to sudo   
* `<s-h>` - Switch to previous tab   
* `<s-l>` - Switch to next tab   
* `<` - Shift left in visual mode   
* `>` - Shift right in visual mode   
* `<c-j><c-k><c-l><c-h>` - Move down/up/right/left and maximum the split   
* Command line mappings:
    * `<c-a>` - Command line "home"   
    * `<c-e>` - Command line "end"   
    * `<c-b>` - Command line "left"   
    * `<c-d>` - Command line "del"   
    * `<c-f>` - Command line "right"   
    * `<c-n>` - Command line "down"   
    * `<c-p>` - Command line "up"   
* `<leader>r` - Replace the current word in all opened buffers   
* `<leader>g` - Generates the header guard   
* `<leader>q` - Toggles quickfix   
* `<leader>ig` - Vimgrep the current word   
* `<leader>eg` - Grep the current word   


## [Vundle](https://github.com/gmarik/Vundle.vim)

Vundle, the plug-in manager for Vim.

**NOTICE:** Vundle is managed by git submodule.
Try these commands to update Vundle:

```bash
cd .vim/bundle/vundle
git pull origin master
```

## [colorselector.vim](https://github.com/c9s/colorselector.vim)

Provide emacs-like colorscheme selector buffer.

* `:SelectColorS` to change themes.
* `<c-q>` to exit colorselect window.

## [indentLine](https://github.com/Yggdroot/indentLine)

A vim plugin to display the indention levels with thin vertical lines.

##### Customizations:
* `<leader>il` to toggle indentLine.

## [vim-airline](https://github.com/bling/vim-airline)

Lean & mean status/tabline for vim that's light as air.

##### Customizations:
* Set theme to `bubblegum`.

## [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)

True Sublime Text style multiple selections for Vim.

* Press `<c-n>` in Normal mode to highlights the current word under the cursor in Visual mode.
* `<c-p>` in Visual mode will remoev the current virtual cursor and go back to the previous virtual cursor location.
* `<c-x>` in Visual mode will remove the current virtual cursor and skip to the next virtual cursor location.

## [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack)

A lightweight implementation of emacs's kill-ring for vim.

##### Customizations:
* `<c-y>` to cycle backward through your history of yanks.
* `<c-Y>` to cycle forward through your history of yanks.

## [vim-easy-align](https://github.com/junegunn/vim-easy-align)

A vim alignment plugin.

* `<Enter>` to align in virtual mode.
* `<leader>a` to align in normal mode.

Try these commands:

* `vip<Enter>=`
    * `v`isual-select `i`nner `p`aragraph.
    * Start EasyAlign command (`<Enter>)`).
    * Align around `=`.

* `<leader>aip=`
    * Start EasyAlign command (`<leader>a)`) for `i`nner `p`aragraph.
    * Align around `=`.

## [vim-easymotion](https://github.com/Lokaltog/vim-easymotion)

Vim motions on speed!

* `<leader>w` to begin of word forward.
* `<leader>b` to begin of word backward.
* `<leader>f{char}` to find `{char}` to the right.
* `<leader>F{char}` to find `{char}` to the left.

## [vim-gitgutter](https://github.com/airblade/vim-gitgutter)

A vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks.

## [delimitMate](https://github.com/Raimondi/delimitMate)

Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.

##### Customizations:
* `<leader>k` to move up. 
* `<leader>j` to move down. 
* `<leader>l` to move right.
* `<leader>h` to move left.

## [vim-unimpaired](https://github.com/tpope/vim-unimpaired)

Pairs of handy bracket mappings.

* `]q` to run `:cnext`.
* `[q` to run `:cprevious`.
* `]b` to run `:bnext`.
* `[b` to run `:bprevious`.
* `[<space>` to add newlines before the cursor line.
* `<space>]` to add newlines after the cursor line.
* `cow` to toggle wrap.
* `cos` to toggle spell.
* `coh` to toggle hlsearch.
* `coi` to toggle ignorecase.

## [syntastic](https://github.com/scrooloose/syntastic)

Syntax checking hacks for vim.

##### Customizations:
* `<leader>sy` to toggle syntastic.

## [tComment](https://github.com/vim-scripts/tComment)

An extensible & universal comment plugin that also handles embedded filetypes.

* `gcc` to toggle comment for the current line.
* `gc` to toggle comment in visual mode.
* `<leader>__` to call `:TComment`.
* `<leader>_p` to comment the current inner paragraph.
* `<leader>_i` to call `:TCommentInline`.
* `<leader>_r` to call `:TCommentRight`.
* `<leader>_b` to call `:TCommentBlock`.

## [nerdtree](https://github.com/scrooloose/nerdtree)

A tree explorer plugin for vim.

##### Customizations:
* `<leader>e` to toggle nerdtree.

## [vim-surround](https://github.com/tpope/vim-surround)

Quoting/parenthesizing made simple.

Press `cs"'` inside
```
"Hello world!"
```
to change it to 
```
'Hello world!'
```
Now press `cs'<q>` to change it to
```
<q>Hello world!</q>
```
To go full circle, press `cst"` to get
```
"Hello world!"
```
To remove the delimiters entirely, press `ds"`.
```
Hello world!
```
Now with the cursor on "Hello", press `ysiw]` (`iw` is a text object).
```
[Hello] world!
```
Let's make that braces and add some space (use `}` instead of `{` for no space): `cs]{`
```
{ Hello } world!
```
Now wrap the entire line in parentheses with `yssb` or `yss)`.
```
({ Hello } world!)
```
Revert to the original text: `ds{ds)`
```
Hello world!
```
Emphasize hello: `ysiw<em>`
```
<em>Hello</em> world!
```

## [supertab](https://github.com/ervandew/supertab)

Perform all your vim insert mode completions with Tab.

##### Customizations:
* `<leader><tab>` to toggle supertab.

## [tagbar](https://github.com/majutsushi/tagbar)

Vim plugin that displays tags in a window, ordered by scope.

##### Customizations:
* `<leader>t` to toggle tagbar.
* Enable auto focus.

## [ack.vim](https://github.com/mileszs/ack.vim)

Vim plugin for the Perl module/CLI script 'ack'.

* `o` to open.
* `O` to open and close quickfix window.
* `t` to open in new tab.
* `h` to open in horizontal split.
* `v` to open in vertical split.
* `q` to close the quickfix window.

##### Customizations:
* `<leader>ac` to ack the current word.

## [ctrlp](https://github.com/kien/ctrlp.vim)

Fuzzy file, buffer, mru, tag, etc finder.

* Press `<c-f>` and `<c-b>` to cycle between modes.
* Use `<c-j>`, `<c-k>` or the arrow keys to navigate the result list.
* Use `<c-t>` or `<c-v>`, `<c-x>` to open the selected entry in a new tab or in a new split.
* Use `<c-n>`, `<c-p>` to select the next/previous string in the prompt's history.
* Use `<c-c>` to exit ctrlp.

##### Customizations:
* `<leader>p` to toggle ctrlp.
* The default toggle mode is `:CtrlPBuffer`.

## [indent-motion](https://github.com/vim-scripts/indent_motion)

Vim motions to the start and end of the current indentation-delimited block.

* `<leader>[` to move to the beginning of your current indentation-delimited block.
* `<leader>]` to move to the end of your current indentation-delimited block.

## [VisIncr](https://github.com/vim-scripts/VisIncr)

Produce increasing/decreasing columns of numbers, datas, or daynames.

1. First, select a column using visual-block `<c-v>` and move the cursor.
2. Second, choose what sort of incremented list you want:
    * `:I [#]` to use the first line's number as a starting point to build a column of increasing/decreasing numbers.
    * `:IYMD [#]` year/month/day
    * `:IMDY [#]` month/day/year
    * `:IDMY [#]` day/month/year
        * They use the starting line's date to construct an increasing/decreasing list of dates.

See `:help visincr` to learn more about VisIncr.

## [ultisnips](https://github.com/SirVer/ultisnips)

The ultimate snippet solution for Vim.

* `<leader>/` to trigger snippets.

## [matchit](https://github.com/vim-scripts/matchit.zip)

Extended % matching for HTML, LaTeX, and many other languages.

## [vim-ragtag](https://github.com/tpope/vim-ragtag)

Ghetto HTML/XML mappings.

* `<c-x><space>` to add closing tag on the same line.
* `<c-x><enter>` to add closing tag separated by a newline.

## [emmet-vim](https://github.com/mattn/emmet-vim)

Emmet for Vim.

* Press `<c-y>,` to trigger emmet.

See [Emmet](http://docs.emmet.io) official site to learn more abount emmet.


ADDITIONAL SYNTAXES
-------------------

* HTML, XML, JSON, Javascript, CSS, SCSS, C, C++, ObjC, Node, Python, Markdown, Nginx.

REFERENCES
----------

* https://github.com/othree/rc.git
* https://github.com/vgod/vimrc.git
* https://github.com/carlhuda/janus.git
