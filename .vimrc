set nu
set incsearch
set hlsearch
set cindent

set ruler
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cursorline
set expandtab
syntax on


filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'majutsushi/tagbar'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'tomasr/molokai'

call vundle#end()
filetype plugin indent on


"autocmd vimenter * NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"let g:molokai_original = 1
"let g:rehash256 = 1
"
"let g:Powerline_symbols = 'fancy'
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'  
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_confirm_extra_conf=0
"let g:ycm_collect_identifiers_from_tag_files = 1

"let g:jedi#auto_initialization = 0
"let g:jedi#use_tabs_not_buffers = 1
"let g:jedi#popup_select_first = 0

nmap <F3> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>




func SetTitle() 
    if &filetype == 'sh'
        call setline(1, "\#######################################")
        call append(line("."), "\#File Name: ".expand("%"))
        call append(line(".")+1, "\#Created Time: ".strftime("%Y-%m-%d %H:%M:%S"))
        call append(line(".")+2, "\#######################################")
        call append(line(".")+3, "#!/bin/bash")
        call append(line(".")+4, "")
        call append(line(".")+5, "")
    elseif &filetype == 'python'
        call setline(1,"\#######################################")
        call append(line("."), "\#File Name: ".expand("%"))
        call append(line(".")+1, "\#Created Time: ".strftime("%Y-%m-%d %H:%M:%S"))
        call append(line(".")+2, "\#######################################")
        call append(line(".")+3, "#!/usr/bin/env python")
        call append(line(".")+4, "")
        call append(line(".")+5, "")
    endif
endfunc

autocmd BufNewFile * call SetTitle()
autocmd BufNewFile * normal G
