" Vim syntax file
" Language:	SNL

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C++ syntax to start with
if version < 600
  so <sfile>:p:h/cpp.vim
else
  runtime! syntax/cpp.vim
  unlet b:current_syntax
endif

" C++ extentions
syn keyword snlType             string
syn keyword snlStatement	assign to monitor sync
syn keyword snlStructure        ss state when

" Default highlighting
if version >= 508 || !exists("did_snl_syntax_inits")
  if version < 508
    let did_snl_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink snlType                Type
  HiLink snlStatement		Statement
  HiLink snlStructure		Structure
  delcommand HiLink
endif

let b:current_syntax = "snl"

" vim: ts=8
