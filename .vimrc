execute pathogen#infect()
map <F2> :NERDTreeToggle<cr>
set shiftwidth=2
set expandtab
set dir=~/tmp
set undodir=~/tmp
"set autowriteall
"map <F2> :cd /Volumes/Raid3/x2/trunk/Code/Game/osx<bar>:NERDTree<cr>
"
function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction
inoremap <tab> <c-r>=Smart_TabComplete()<CR>
" Modified tab completion. It works fine now.
"function! My_TabComplete()
"  let line = getline('.')                         " curline
"  let substr = strpart(line, -1, col('.')+1)      " from start to cursor
"  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
"  if (strlen(substr)==0)                          " nothing to match on empty string
"   return "\<tab>"
"  endif
"  let bool = match(substr, '\.')                  " position of period, if any  
"  if (bool==-1)
"   return "\<C-X>\<C-P>"                         " existing text matching
"  else
"   return "\<C-X>\<C-O>"                         " plugin matching 
"  endif
"endfunction
"autocmd BufNew,BufRead *.{cpp,h,c,mm} inoremap <tab> <C-R>=My_TabComplete()<CR>
"
"map <Leader>b :MiniBufExplorer<cr>
"let g:miniBufExplVSplit = 1
"let g:miniBufExplMaxSize = 25
"let g:miniBufExplMinSize = 25
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplUseSingleClick = 1
""let g:miniBufExplForceSyntaxEnable = 1
"hi link MBENormal Normal
"hi link MBEChanged WarningMsg
"hi link MBEVisibleNormal Visual
"hi link MBEVisibleChanged Error
