set nocompatible

if !exists("syntax_on")
  syntax on
endif

set hls

" use system clipboard
set clipboard=unnamed

" pathogen
call pathogen#infect()

" QML file
au BufNewFile,BufRead *.qml set filetype=qml

" SWIG interface file
au BufNewFile,BufRead *.i set filetype=swig 
au BufNewFile,BufRead *.swg set filetype=swig 

" EPICS template syntax highlight
au BufRead,BufNewFile *.template set filetype=epicsdb

" EPICS substitution syntax highlight
au BufRead,BufNewFile *.subs set filetype=epicssubs

" EPICS SNL syntax highlight
au BufRead,BufNewFile *.st set filetype=snl

" NERDTree
nnoremap <F2> :NERDTreeToggle<CR> 
inoremap <F2> <ESC>:NERDTreeToggle<CR>i 
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeShowBookmarks=1
" close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" UI
set nu
set showcmd

" GUI Font
set gfn=Menlo:h14
let treeExplVertical=2

" allways show status line
set laststatus=2

filetype plugin indent  on      " filetype plugin

set mouse=a             " mouse enabled

set autoindent          " always set autoindenting on
set smartindent         " set smart indent

" Tabs
set expandtab           " tab = 4 spaces
set tabstop=8
set shiftwidth=4
set smarttab

"Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set wildmenu            " command-line completion operates in an enhanced mode

set nobackup

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

