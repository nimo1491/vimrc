" gvim and macvim {
    if has("gui_running")
        colors  desertExN               "scheme
        set     cursorline              "highlight current line
        if has("gui_macvim")
            set gfn=Osaka-Mono:h20      "font
        else
            set gfn=Consolas:h12        "font
            set guioptions-=T           "remove toolbar
            " if you want english {
                language    mes en
                lang        english
                set         langmenu=en_US.UTF-8
                source      $VIMRUNTIME/delmenu.vim
                source      $VIMRUNTIME/menu.vim
            " }
            " else if you want chinese {
                "let $LANG="zh_TW.UTF-8"
                "set    langmenu=zh_tw.utf-8
                "set    encoding=utf8
                "source $VIMRUNTIME/delmenu.vim
                "source $VIMRUNTIME/menu.vim
            " }
            " Gvim windows position and size {
                winsize 120  35
                winpos  20  20
            " }
        endif
    endif
" }
