# Nimo's vimrc

My Neovim / Vim configuration, managed with [vim-plug](https://github.com/junegunn/vim-plug)
and [coc.nvim](https://github.com/neoclide/coc.nvim) for completion.

## Requirements

- Neovim 0.10+ (for copying to the local clipboard over SSH via OSC 52). With
  [nimo1491/rc](https://github.com/nimo1491/rc), mise installs it.
- Node.js for coc.nvim (also from mise with nimo1491/rc)
- [ripgrep](https://github.com/BurntSushi/ripgrep), [fzf](https://github.com/junegunn/fzf),
  ctags, and optionally clangd for C/C++ completion:

      sudo apt install ripgrep universal-ctags clangd

## Install

For Neovim:

    curl -fsSL https://raw.githubusercontent.com/nimo1491/vimrc/master/auto-install.sh | bash -s nvim

For Vim, drop `-s nvim`. This clones the repo to `~/.vim` and runs `install.sh`,
which downloads vim-plug, links the config and installs the plugins. To re-run
it on an existing clone, run `~/.vim/install.sh nvim`.

coc.nvim installs the extensions listed in `g:coc_global_extensions` on the
first start.

## Upgrade plugins

Run `:PlugUpdate` (or `:PlugInstall` after adding a plugin), and `:CocUpdate`
for the coc extensions.

## Key mappings

The leader key is `,`.

| Key | Description |
| --- | --- |
| `,p` | find files (fzf) |
| `,<Enter>` | switch buffers |
| `,ag` / `,Ag` | live ripgrep / ripgrep for the word under the cursor |
| `,f` | search the word under the cursor with CtrlSF |
| `,h` | recently opened files |
| `,e` / `,,e` | toggle NERDTree / reveal the current file |
| `,t` | toggle Tagbar |
| `,gd` / `,gi` / `,su` | go to definition / implementation / references (coc) |
| `K` | show documentation |
| `s` | EasyMotion jump |
| `Ctrl-n` | multiple cursors (vim-visual-multi) |
| `,G` | Goyo distraction-free mode |
| `,/` | clear search highlighting |
| `:cd.` | change the window's directory to the current file's |
| `:w!!` | save with sudo |

## References

- https://github.com/moskytw/mosky.vim
- https://github.com/junegunn/dotfiles
- https://github.com/ycavatars/vimrc
- https://github.com/othree/rc.git
- https://github.com/vgod/vimrc.git
- https://github.com/carlhuda/janus.git
