set cursorline
"set nocompatible
colorscheme Monokai
"colorscheme Molokai
"colorscheme smyck
"hi StatusLine           cterm=none ctermbg=8        ctermfg=15      gui=bold        guibg=#FBFBFB   guifg=#5D5D5D
"hi CursorLine           cterm=none ctermbg=238      ctermfg=none    gui=none        guibg=#424242
"hi VertSplit            cterm=none ctermbg=15       ctermfg=8       gui=bold        guibg=#5D5D5D   guifg=#FBFBFB
"hi VertSplit ctermfg=241 ctermbg=241 cterm=NONE guifg=#64645e guibg=#64645e gui=NONE
set guifont=Consolas:h15
"set guioptions-=T
"set columns=170
"set lines=81
"set number
"set tags=../../tags
"set path+=../../**
"set shiftwidth=4
"set softtabstop=4
"set expandtab
"set incsearch
"set guitablabel=%t
"set laststatus=2
"set ignorecase
"set smartcase
"set autoindent
"set cot-=preview
"set hlsearch
set linespace=1
"set autowrite
"set wildignore+=*/.git/*
"set transparency=15
"set autowriteall
"filetype on
"filetype plugin on
"filetype indent on
"set fileencodings=utf-8
"set makeprg=./build.sh
"map <A-D-Left> :tabp<CR>
"map <A-D-Right> :tabn<CR>
"map <D-r> :!open build/Debug/Tidy.app<cr>
"map <D-'> :cn<cr>
"map <D-"> :cp<cr>
"map <D-b> :make<cr>
"map <D-]> :tn<cr>
"map <D-[> :tp<cr>
"map <C-H> :tabp<cr>
"map <C-L> :tabn<cr>

" Movement h j k l
" noremap n j
" noremap i l
" noremap e k

" Next search: k
" noremap k n

" End of word: j
" noremap l e

" Insert mode: l
" noremap l i

" Window handling
" noremap <C-w>n <C-w>j
" noremap <C-w>e <C-w>k
" noremap <C-w>i <C-w>l
