" Nimo's vimrc
" https://github.com/nimo1491/vimrc


"---------------------------------------------------
" vim-plug
"---------------------------------------------------
" Set the runtime path to include Vundle and initialize {
    " set nocompatible
    " filetype off
    " if has("win32") || has("win64")
    "     set rtp+=$VIM\vimfiles\bundle\Vundle
    " else
    "     set rtp+=~/.vim/bundle/Vundle/
    " endif
    " call vundle#rc()
" }

silent! if plug#begin('~/.vim/plugged')
    " UI {
        Plug 'Twinside/vim-cuteErrorMarker'
        " Plug 'c9s/colorselector.vim'
        Plug 'Yggdroot/indentLine'
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'chriskempson/vim-tomorrow-theme'
        Plug 'NLKNguyen/papercolor-theme'
        Plug 'chriskempson/base16-vim'
    " }

    " Basic {
        Plug 'michaeljsmith/vim-indent-object'
        Plug 'editorconfig/editorconfig-vim'
        Plug 'terryma/vim-multiple-cursors'
        Plug 'maxbrunsfeld/vim-yankstack'
        Plug 'terryma/vim-expand-region'
        Plug 'Lokaltog/vim-easymotion'
        Plug 'airblade/vim-gitgutter'
        Plug 'Raimondi/delimitMate'
        Plug 'scrooloose/syntastic'
        Plug 'tomtom/tcomment_vim'
        Plug 'scrooloose/nerdtree'
        Plug 'tpope/vim-surround'
        Plug 'tpope/vim-fugitive'
        Plug 'majutsushi/tagbar'
        Plug 'mileszs/ack.vim'
        " Plug 'kien/ctrlp.vim'
        Plug 'argtextobj.vim'
        Plug 'VisIncr'
    " }

    " Syntax, Indent {
        Plug 'SyntaxComplete'
        Plug 'nginx.vim'
        Plug 'elzr/vim-json'
        Plug 'othree/html5.vim'
        Plug 'plasticboy/vim-markdown'
        " ***** JS, JSX, TS ***** "
        Plug 'othree/javascript-libraries-syntax.vim'
        Plug 'jiangmiao/simple-javascript-indenter'
        Plug 'othree/yajs.vim'
        Plug 'othree/es.next.syntax.vim'
        Plug 'othree/jspc.vim'
        " Plug 'bigfish/vim-js-context-coloring'
        Plug 'pangloss/vim-javascript'
        Plug 'leafgarland/typescript-vim'
        Plug 'mxw/vim-jsx'
        " ***** CSS ***** "
        Plug 'hail2u/vim-css3-syntax'
        Plug 'ap/vim-css-color'
    " }

    " Snippet {
        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'
    " }

    " HTML, XML {
        Plug 'vim-scripts/matchit.zip'
        Plug 'gregsexton/MatchTag'
        Plug 'tpope/vim-ragtag'
        Plug 'mattn/emmet-vim'
    " }

    " Completion {
        Plug 'Valloric/YouCompleteMe'
        " Plug 'L9'
        " Plug 'othree/vim-autocomplpop'
        " Plug 'marijnh/tern_for_vim'
        " Plug 'ahationyman/vim-nodejs-complete'
    " }

    " junegunn {
        Plug 'junegunn/vim-easy-align'
        Plug 'junegunn/limelight.vim'
        Plug 'junegunn/seoul256.vim'
        Plug 'junegunn/vim-journal'
        Plug 'junegunn/vim-emoji'
        Plug 'junegunn/goyo.vim'
        Plug 'junegunn/gv.vim'
        " A command-line fuzzy finder written in Go
        Plug 'junegunn/fzf'
        " A set of fzf-based Vim commands.
        Plug 'junegunn/fzf.vim'
    " }
call plug#end()
endif


"---------------------------------------------------
" VIM Basic and UI
"---------------------------------------------------
" Encoding settings {
    set fencs=utf-8,big5,euc-jp,utf-bom,iso8859-1
    set fenc=utf-8 enc=utf-8 tenc=utf-8
" }

" General Settings {
    " not compatible with the old-fashion vi mode
    set nocompatible
    " set dark background
    set bg=dark
    " equals bs=indent,eol,start
    set bs=2
    " keep 500 lines of command line history
    set history=500
    " remember 100 changes
    set undolevels=100
    " auto read when file is changed from outside
    set autoread
    " disable backup
    set nobackup
    " disable swap file
    set noswapfile
    " show the ruler
    set ruler
    " enable modeline
    set modeline
    " show matching brackets/parenthesis
    set showmatch
    " display the current mode
    set showmode
    " line number on
    set number
    " how many tenths of a second to blink
    set mat=15
    " force newline = 0x0a
    set ff=unix
    " send more chars while redrawing
    set ttyfast
    " don't redraw while exectuing macros
    set lazyredraw
    " enable mouse
    set mouse=r
    " always use the clipboard for ALL vim operations
    if has('nvim')
        set clipboard+=unnamedplus
    else
        set clipboard+=unnamed
    endif
    " seperate list of screen columns
    " set colorcolumn=80

    " Set scroll options {
        " lines to scroll when cursor leaves screen
        set scrolljump=1
        " minimum lines to keey above and below cursor
        set scrolloff=6
    " }

    " Set search options {
        " highlight search terms
        set hlsearch
        " find as you tye search
        set incsearch
        " ignore case if search pattern is all lowercase
        set smartcase
        " case insensitive search
        set ignorecase
    " }

    " Show tabs and end of line {
        set list
        set listchars=tab:▹\ ,trail:▵
    " }
" }

" Set wild options {
    set wildmenu
    set wildmode=longest,list
    set wildignore+=*.o,*.class,*.pyc,*.a,*.so,*.obj,*.exe,*.lib,*.ncb,*.opt,*.plg,.svn,.git
    set winaltkeys=no
" }

" Formatting {
    " wrap long lines
    set wrap
    " move smoothly between lines
    set whichwrap=b,s,<,>,[,]

    " Set indent options {
        " indent at the same level of the previous line
        set autoindent
        " advanced auto indent, remember to enable autoindent
        set smartindent
        " copy the previous indentation on autoindenting
        set copyindent
    " }

    " Set tab options {
        " insert tabs on the start of a line according to contect
        set smarttab
        " replace <TAB> with spaces
        set expandtab
        " use indents of 4 spaces
        set shiftwidth=4
        " an indentation every four columns
        set tabstop=4
        " let backspace delete indent
        set softtabstop=4
    " }

    " Makefile have to use <TAB> excepts spaces
    au FileType Makefile set noexpandtab
" }

" Disable sound on errors {
    set noerrorbells
    set novisualbell
    set t_vb=
    set tm=500
" }

" Auto reload vimrc when editing it {
    if has("win32") || has("win64")
       autocmd! bufwritepost _vimrc source $VIM\_vimrc
    else
       autocmd! bufwritepost .vimrc source ~/.vimrc
    endif
" }

" UI settings {
    if !has("gui_running")
        " color
        set t_Co=256
        " scheme
        silent! colors PaperColor
        " highlight current line
        set cursorline
    " else ---> see gvimrc
    endif
" }

" Autoload syntax and filetype related script. Must set before GVIM Settings {
    syntax on
    filetype on
    filetype plugin on
    filetype indent on
" }

" Status line {
    if has('statusline')
        set laststatus=2
        set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \
        set statusline+=\ \ \ [%{&ff}/%Y]
        set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\
        set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L

        function! CurDir()
            let curdir = substitute(getcwd(), $HOME, "~", "")
            return curdir
        endfunction

        function! HasPaste()
            if &paste
                return '[PASTE]'
            else
                return ''
            endif
        endfunction
    endif
" }

" Restore cursor to file position in previous editing session {
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" }

" Save view {
    "autocmd  BufWinLeave *.* silent mkview
    "autocmd  BufWinEnter *.* silent loadview
" }


"---------------------------------------------------
" Language Specific Indent
"---------------------------------------------------
" C/C++ specific settings {
    au FileType c,cpp,cc set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30
" }

" HTML/CSS/Javascript/Ruby/Java indent settings {
    au FileType html,javascript,css,ejs,ruby,java setlocal ts=2 sts=2 sw=2
" }

" Handlebars {
    au BufNewFile,BufRead *.handlebars set filetype=html
" }


"---------------------------------------------------
" VIM Key Mappings
"---------------------------------------------------
" Set leader to ',' {
    let mapleader   = ","
    let g:mapleader = ","
" }

" Change working directory to that of the current file {
    cmap cd. lcd %:p:h
" }

" Turn off search highlighting {
    nmap <leader>/ :nohl<CR>
" }

" ,p toggles paste mode {
    nmap <leader>p :set paste!<BAR>set paste?<CR>
" }

" For when you forget to sudo in ubuntu/mint... {
    cmap w!! w !sudo tee % > /dev/null
" }

" Move around tabs. conflict with the original screen top/bottom {
    map <S-H> gT
    map <S-L> gt
" }

" Allow multiple indentation/deindentation in visual mode {
    vmap < <gv
    vmap > >gv
" }

" Move around and maximum the split {
    map     <c-j>   <c-w>j<c-w>_
    map     <c-k>   <c-w>k<c-w>_
    nmap    <c-h>   <c-w>h<c-w><bar>
    nmap    <c-l>   <c-w>l<c-w><bar>
    " Set the min width of a window to 0 so we can maximize others {
        set wmw=0
    " }
    " Set the min height of a window to 0 so we can maximize others {
        set wmh=0
    " }
" }

" Command line mapping {
    cm  <c-a>   <home>
    cm  <c-e>   <end>
    cno <c-b>   <left>
    cno <c-d>   <del>
    cno <c-f>   <right>
    cno <c-n>   <down>
    cno <c-p>   <up>
" }

" ,r replace the current word in all opened buffers {
    map <leader>r :call Replace()<CR>
    fun! Replace()
        let s:word = input("Replace " . expand('<cword>') . " with:")
        :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/ge'
        :unlet! s:word
    endfun
" }

" ,g generates the header guard {
    map <leader>g :call IncludeGuard()<CR>
    fun! IncludeGuard()
       let basename = substitute(bufname(""), '.*/', '', '')
       let guard = '_' . substitute(toupper(basename), '\.', '_', "H")
       call append(0, "#ifndef " . guard)
       call append(1, "#define " . guard)
       call append( line("$"), "#endif // for #ifndef " . guard)
    endfun
" }

" Quick Fix {
    com! -bang -nargs=? QFix cal QFixToggle(<bang>0)
    com! -bang -nargs=? QFixf cal QFixToggle(<bang>1)
    fu! QFixToggle(forced)
      if exists("g:qfix_win") && a:forced == 0
        cclose
        unlet g:qfix_win
      else
        copen 10
        let g:qfix_win = bufnr("$")
      en
    endf
    nn      <leader>q :QFix<cr>
" }

" ,ig ,eg grep{
    nmap <leader>eg :silent execute "grep! -r ".expand("<cword>")." ./ "<Bar>QFixf<CR>
    nmap <leader>ig :execute "vimgrep! /".expand("<cword>")."/gj **"<Bar>QFixf<CR>
" }

" Onmi Completion {
    " Enable Onmi Completion (C-x C-o) {
        autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
        autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        autocmd FileType css set omnifunc=csscomplete#CompleteCSS
        autocmd FileType c set omnifunc=ccomplete#Complete
    " }

    " Use syntax complete if nothing else available {
        if has("autocmd") && exists("+omnifunc")
            autocmd Filetype *
                \	if &omnifunc == "" |
                \		setlocal omnifunc=syntaxcomplete#Complete |
                \	endif
        endif
    " }

    " Make CSS omnicompletion work for SASS and SCSS {
        autocmd BufNewFile,BufRead *.scss set ft=scss.css
        autocmd BufNewFile,BufRead *.sass set ft=sass.css
    " }
" }


"---------------------------------------------------
" VIM Plugins
"---------------------------------------------------
" UI {
    " vim-airline {
        let g:airline_theme = "tomorrow"
        let g:airline_powerline_fonts = 1
        let g:airline#extensions#whitespace#enabled = 0

        silent! if emoji#available()
            let s:ft_emoji = map({
                \ 'c':              'baby_chick',
                \ 'clojure':        'lollipop',
                \ 'coffee':         'coffee',
                \ 'cpp':            'chicken',
                \ 'css':            'art',
                \ 'eruby':          'ring',
                \ 'gitcommit':      'soon',
                \ 'haml':           'hammer',
                \ 'help':           'angel',
                \ 'html':           'herb',
                \ 'java':           'older_man',
                \ 'javascript':     'monkey',
                \ 'javascript.jsx': 'monkey',
                \ 'make':           'seedling',
                \ 'mkd.markdown':   'book',
                \ 'perl':           'camel',
                \ 'python':         'snake',
                \ 'ruby':           'gem',
                \ 'scala':          'barber',
                \ 'sh':             'shell',
                \ 'slim':           'dancer',
                \ 'text':           'books',
                \ 'vim':            'pig',
                \ 'yaml':           'yum',
                \ 'yaml.jinja':     'yum'
            \ }, 'emoji#for(v:val)')

            function! S_filetype()
            if empty(&filetype)
              return emoji#for('grey_question')
            else
              return get(s:ft_emoji, &filetype, '['.&filetype.']')
            endif
            endfunction

            function! AirlineOverwrite()
                let g:airline_section_c = airline#section#create(['%{S_filetype()}', ' %f'])
            endfunction
            autocmd VimEnter * call AirlineOverwrite()
        endif

    " }
" }

" Basic {
    " editorconfig-vim {
        let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
    " }

    " vim-yankstack {
        silent! call yankstack#setup()
        let g:yankstack_map_keys = 0
        nmap <c-y> <Plug>yankstack_substitute_older_paste
        nmap <c-Y> <Plug>yankstack_substitute_newer_paste
    " }

    " vim-easy-align {
        vmap <Enter> <Plug>(EasyAlign)
        nmap <Leader>a <Plug>(EasyAlign)
    " }

    " vim-easymotion {
        let g:EasyMotion_smartcase = 1
        nmap s <Plug>(easymotion-s2)
    " }

    " vim-gitgutter {
        let g:gitgutter_max_signs = 50000
        silent! if emoji#available()
            let g:gitgutter_sign_added             = emoji#for('small_blue_diamond')
            let g:gitgutter_sign_modified          = emoji#for('small_orange_diamond')
            let g:gitgutter_sign_removed           = emoji#for('small_red_triangle')
            let g:gitgutter_sign_modified_removed  = emoji#for('collision')
        endif
    " }

    " delimitMate {
        imap <leader>k <ESC>O
        imap <leader>j <ESC>o
        imap <leader>l <ESC>la
        imap <leader>h <ESC>hi
    " }

    " Syntastic {
        let g:syntastic_mode_map = {
            \ "mode": "passive",
            \ "active_filetypes": [],
            \ "passive_filetypes": []}
        let g:syntastic_auto_loc_list = 1
        let g:syntastic_javascript_checkers = ['eslint']
        let g:syntastic_python_checkers = ['python']
        nm <leader>sy :SyntasticCheck<CR>
    " }

    " nerdtree {
        nmap  <leader>e :NERDTreeToggle<CR>
        nmap  <leader><leader>e :NERDTreeFind<CR>
    " }

    " tagbar {
        nm  <leader>t :TagbarToggle<CR>
        let g:tagbar_autofocus = 1
    " }

    " ack {
        let g:ackprg = "ag"
        let g:ack_mappings = { "H":"" }
        nm  <leader>ag  :silent execute "Ack! --column -r ".expand("<cword>")." ./ "<Bar>QFixf<CR>
    " }

    " ctrlp {
        " let g:ctrlp_map = "<leader>f"
        " let g:ctrlp_working_path_mode = 0
        " let g:ctrlp_custom_ignore = {
        "     \ 'dir':    '\node_modules$\|.git$\|\.hg$\|\.svn$',
        "     \ 'file':   '\.exe$\|\.so$\|\.dll$\|\.bz2$\|\.gz$\.DS_Store$\|\.jpg$\|\.png$\|\.jpeg$\|\.gif$\|\.svg$',
        "     \ }
        " if has("win32") || has("win64")
        "     let g:ctrlp_user_command = "dir %s /-n /b /s /a-d"
        " endif
        " nm  <leader>b :CtrlPBuffer<CR>
    " }

    " FZF {
        if has('nvim')
            let $FZF_DEFAULT_OPTS .= ' --inline-info'
        endif

        nnoremap <silent> <expr> <Leader>f (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
        nnoremap <silent> <Leader>C        :Colors<CR>
        nnoremap <silent> <Leader>b        :Buffers<CR>
        nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
        nnoremap <silent> <Leader>`        :Marks<CR>

        imap <c-x><c-k> <plug>(fzf-complete-word)
        imap <c-x><c-f> <plug>(fzf-complete-path)
        imap <c-x><c-j> <plug>(fzf-complete-file-ag)
        imap <c-x><c-l> <plug>(fzf-complete-line)

        nmap <leader><tab> <plug>(fzf-maps-n)
        xmap <leader><tab> <plug>(fzf-maps-x)
        omap <leader><tab> <plug>(fzf-maps-o)

        command! Plugs call fzf#run({
          \ 'source':  map(sort(keys(g:plugs)), 'g:plug_home."/".v:val'),
          \ 'options': '--delimiter / --nth -1',
          \ 'down':    '~40%',
          \ 'sink':    'Explore'})

        " This is the default extra key bindings
        let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-s': 'split',
            \ 'ctrl-v': 'vsplit' }
    " }

    " gv.vim {
        function! s:gv_expand()
            let line = getline('.')
            GV --name-status
            call search('\V'.ine, 'c')
            normal! zz
        endfunction

        autocmd! FileType GV nnoremap <buffer> <silent> + :call <sid>gv_expand()<cr>
    " }

    " Expand region {
        " vmap v <Plug>(expand_region_expand)
        " vmap <C-v> <Plug>(expand_region_shrink)
    " }

    " limelight + goyo {
        let g:limelight_priority = -1

        function! s:goyo_enter()
            if has('gui_running')
                set    fullscreen
                set    background=dark
                set    linespace=7
            elseif exists('$TMUX')
                silent !tmux set status off
            endif
            " hi NonText ctermfg=101
            Limelight
        endfunction

        function! s:goyo_leave()
            if has('gui_running')
                set    nofullscreen
                set    background=dark
                set    linespace=0
            elseif exists('$TMUX')
                silent !tmux set status on
            endif
            Limelight!
        endfunction

        autocmd! User GoyoEnter nested call <SID>goyo_enter()
        autocmd! User GoyoLeave nested call <SID>goyo_leave()

        nnoremap <Leader>G :Goyo<CR>
    " }
" }

" Syntax {
    " vim-markdown {
        let g:vim_markdown_folding_disabled = 1
    " }

    " nginx {
        au BufRead,BufNewFile /usr/local/etc/nginx/* set ft=nginx
        au BufRead,BufNewFile /etc/nginx/* set ft=nginx
    " }

    " jsx {
        let g:jsx_ext_required = 0
    " }
" }

" Syntax {
    " UltiSnips {
        let g:UltiSnipsExpandTrigger = "<c-j>"
        let g:UltiSnipsJumpForwardTrigger = "<c-n>"
        let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
    " }
" }

" Completion {
    " YouCompleteMe {
        let g:ycm_always_populate_location_list = 0
        let g:ycm_show_diagnostics_ui = 0
        let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
        let g:ycm_collect_identifiers_from_tags_files = 1
        let g:ycm_seed_indetifiers_with_syntax = 1
        let g:ycm_confirm_extra_conf = 0
    " }

    " Alternative of YCM {
        " AutoComplPop {
            " let g:acp_enableAtStartup = 1
            " let g:acp_completeOption = '.,w,b,u,t,i,k'
            " let g:acp_behaviorUserDefinedMeets = 'acp#meetsForKeyword'
            " let g:acp_behaviorUserDefinedFunction = 'syntaxcomplete#Complete'
            " let g:omni_syntax_use_iskeyword = 0
        " }
    " }

    " Alternative of YCM {
        " supertab {
            " let g:SuperTabDefaultCompletionType = 'context'
            " let SuperTabMappingForward = '<leader><tab>'
        " }
    " }
" }
