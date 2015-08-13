" Nimo's vimrc
" https://github.com/nimo1491/vimrc


"---------------------------------------------------
" Vundle 
"---------------------------------------------------
" Set the runtime path to include Vundle and initialize {
    set nocompatible
    filetype off
    if has("win32") || has("win64")
        set rtp+=$VIM\vimfiles\bundle\Vundle
    else
        set rtp+=~/.vim/bundle/Vundle/
    endif
    call vundle#rc()
" }

" Let Vundle manage Vundle, required {
    Plugin 'gmarik/Vundle'
" }

" Vundle plugins {
    " UI {
        Plugin 'Twinside/vim-cuteErrorMarker'
        Plugin 'c9s/colorselector.vim'
        Plugin 'bling/vim-airline'
    " }
    " Basic {
        Plugin 'editorconfig/editorconfig-vim'
        Plugin 'terryma/vim-multiple-cursors'
        Plugin 'maxbrunsfeld/vim-yankstack'    
        Plugin 'junegunn/vim-easy-align'
        Plugin 'Lokaltog/vim-easymotion'
        Plugin 'airblade/vim-gitgutter'
        Plugin 'Raimondi/delimitMate'
        Plugin 'scrooloose/syntastic'
        Plugin 'tomtom/tcomment_vim'
        Plugin 'scrooloose/nerdtree'
        Plugin 'tpope/vim-surround'
        Plugin 'tpope/vim-fugitive'
        " Plugin 'justinmk/vim-sneak'       " conflict with vim-yankstack
        Plugin 'majutsushi/tagbar'
        Plugin 'mileszs/ack.vim'
        Plugin 'kien/ctrlp.vim'
        Plugin 'argtextobj.vim'
        Plugin 'indent-motion'
        Plugin 'VisIncr'
    " }
    " Syntax, Indent {
        Plugin 'SyntaxComplete'
        Plugin 'othree/javascript-libraries-syntax.vim' " Javascript
        Plugin 'jiangmiao/simple-javascript-indenter'   " Javascript
        " Plugin 'jelera/vim-javascript-syntax'           " Javascript
        Plugin 'othree/yajs.vim'                        " Javascript
        Plugin 'plasticboy/vim-markdown'                " Markdown
        Plugin 'hail2u/vim-css3-syntax'                 " CSS3
        Plugin 'ap/vim-css-color'                       " CSS color
        Plugin 'othree/html5.vim'                       " HTML5
        Plugin 'nginx.vim'                              " Nginx
        Plugin 'JSON.vim'                               " JSON
    " }
    " Snippet {
        Plugin 'MarcWeber/vim-addon-mw-utils.git'
        Plugin 'tomtom/tlib_vim.git'
        Plugin 'garbas/vim-snipmate'
        Plugin 'honza/vim-snippets'
    " }
    " HTML, XML {
        Plugin 'vim-scripts/matchit.zip'
        Plugin 'gregsexton/MatchTag'
        Plugin 'tpope/vim-ragtag'
        Plugin 'mattn/emmet-vim'
    " }
    " Completion {
        Plugin 'L9'         
        Plugin 'othree/vim-autocomplpop'         
        Plugin 'marijnh/tern_for_vim'           " Javascript
        " Plugin 'ahayman/vim-nodejs-complete'    " Node
        " Alternative of AutoComplPop {
            " Plugin 'Valloric/YouCompleteMe'         " C related languages and Python
        " }
        " Alternative of YCM {
            " Plugin 'ervandew/supertab'              " Perform completions with tab
            " Plugin 'Rip-Rip/clang_complete'         " C related languages completions
            " Plugin 'davidhalter/jedi-vim'           " Python completions
        " }
    " }
" }


"---------------------------------------------------
" VIM Basic and UI
"---------------------------------------------------
" General Settings {
    set nocompatible        "not compatible with the old-fashion vi mode        
    set bg=dark             "set dark background
    set bs=2                "equals bs=indent,eol,start     
    set history=500         "keep 500 lines of command line history        
    set undolevels=100      "Remember 100 changes
    set autoread            "auto read when file is changed from outside
    set nobackup            "disable backup
    set noswapfile          "disable swap file
    set ruler               "show the ruler
    set modeline            "enable modeline
    set showmatch           "show matching brackets/parenthesis
    set showmode            "display the current mode
    set number              "line number on
    set mat=15              "how many tenths of a second to blink
    set ff=unix             "force newline = 0x0a
    " set viminfo=            "disable .viminfo file
    set ttyfast             "send more chars while redrawing
    " set scroll options {
        set scrolljump=1    "lines to scroll when cursor leaves screen
        set scrolloff=6     "minimum lines to keey above and below cursor
    " }
    " set search options {
        set hlsearch        "highlight search terms
        set incsearch       "find as you tye search
        set smartcase       "ignore case if search pattern is all lowercase
        set ignorecase      "case insensitive search
    " }
" }

" Set wild options {
    set  wildmenu       
    set  wildmode=longest,list
    set  wildignore+=*.o,*.class,*.pyc,*.a,*.so,*.obj,*.exe,*.lib,*.ncb,*.opt,*.plg,.svn,.git
    set  winaltkeys=no
" }

" Formatting {
    set wrap                "wrap long lines
    " Set indent options {
        set autoindent      "indent at the same level of the previous line
        set smartindent     "advanced auto indent, remember to enable autoindent 
        set copyindent      "copy the previous indentation on autoindenting
    " }
    " Set tab options {
        set smarttab        "insert tabs on the start of a line according to contect
        set expandtab       "replace <TAB> with spaces
        set shiftwidth=4    "use indents of 4 spaces
        set tabstop=4       "an indentation every four columns
        set softtabstop=4   "let backspace delete indent
    " }
    au FileType Makefile set noexpandtab    "Makefile have to use <TAB> excepts spaces
" }

" Disable sound on errors {
    set noerrorbells
    set novisualbell
    set t_vb=
    set tm=500
" }

" Auto reload vimrc when editing it {
    "if has("win32") || has("win64")
    "    autocmd! bufwritepost _vimrc source $VIM\_vimrc 
    "else
    "    autocmd! bufwritepost .vimrc source ~/.vimrc    
    "endif
" }

" UI settings {
    if !has("gui_running")
        set         t_Co=256    "color
        colors      desertExN   "scheme
        set         cursorline  "highlight current line
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

" Encoding settings {
    set fencs=utf-8,big5,euc-jp,utf-bom,iso8859-1
    set fenc=utf-8 enc=utf-8 tenc=utf-8
" }

" Restore cursor to file position in previous editing session {
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" }
"
" Save view {
    "autocmd  BufWinLeave *.*	silent mkview
    "autocmd  BufWinEnter *.*	silent loadview
" }

" C/C++ specific settings {
    au FileType c,cpp,cc  set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30
" }


"---------------------------------------------------
" Language Specific Indent
"---------------------------------------------------
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
    nmap <leader><leader>p :set paste!<BAR>set paste?<CR>
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
    " }
" }

" Basic {
    " editorconfig-vim {
        let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
    " }

    " vim-yankstack {
        call yankstack#setup()
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
        let g:syntastic_javascript_checkers = ['jslint']
        let g:syntastic_javascript_jslint_conf = "--nomen --plusplus --forin --regext"
        let g:syntastic_python_checkers = ['pyflakes']
        nm <leader>sy :SyntasticCheck<CR>
    " }
    
    " nerdtree {
        nmap  <leader>e :NERDTreeToggle<CR>
    " }
    
    " sneak {
        let g:sneak#streak = 1
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
        let g:ctrlp_map = "<leader>f"
        let g:ctrlp_working_path_mode = 0
        let g:ctrlp_custom_ignore = {
            \ 'dir':    '\node_modules$\|.git$\|\.hg$\|\.svn$',
            \ 'file':   '\.exe$\|\.so$\|\.dll$\|\.bz2$\|\.gz$\.DS_Store$\|\.jpg$\|\.png$\|\.jpeg$\|\.gif$\|\.svg$',
            \ }
        if has("win32") || has("win64")
            let g:ctrlp_user_command = "dir %s /-n /b /s /a-d"
        else
            let g:ctrlp_user_command = "find %s -type f"
        endif
        nm  <leader>b :CtrlPBuffer<CR>
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
" }

" Completion {
    " AutoComplPop {
        let g:acp_enableAtStartup = 1
        let g:acp_completeOption = '.,w,b,u,t,i,k'
        " let g:acp_behaviorSnipmateLength = 1 
        let g:acp_behaviorUserDefinedMeets = 'acp#meetsForKeyword'
        let g:acp_behaviorUserDefinedFunction = 'syntaxcomplete#Complete'
        let g:omni_syntax_use_iskeyword = 0
    " }

    " Alternative of AutoComplPop {
        " YouCompleteMe {
            " let g:ycm_always_populate_location_list = 0
            " let g:ycm_show_diagnostics_ui = 0
            " let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
            " let g:ycm_collect_identifiers_from_tags_files = 1
            " let g:ycm_seed_indetifiers_with_syntax = 1
            " let g:ycm_confirm_extra_conf = 0
        " }
    " }
    
    " Alternative of YCM {
        " supertab {
            " let g:SuperTabDefaultCompletionType = 'context'
            " let SuperTabMappingForward = '<leader><tab>'
        " }
    " }
" }
