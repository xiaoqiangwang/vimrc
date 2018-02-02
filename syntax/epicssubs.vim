" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" EPICS keywords
syn keyword     epicsSubKey     file pattern

syn match       epicsSubNumber  "\<[-+]\=\d\+\.\=\d*\([eE][-+]\=\d\+\)\=\>"
syn match       epicsSubComment "^\s*#.*$"
syn match       epicsSubString  /"[^"]*"/
syn match       epicsSubConstant  "\(file\)\@<=\s\+[^ ]\+\.template"
syn match       epicsSubPlainMacro "[a-zA-Z0-9_.$()]\+\(\s*=\)\@="
syn match       epicsSubPatternMacro "[a-zA-Z0-9_-]\+" contained
syn region      epicsSubPatternGroup start="\(pattern\_s*\)\@<={" end="}" contains=epicsSubPatternMacro

" Define the default highlighting.
hi def link epicsSubKey          Statement
hi def link epicsSubConstant     Identifier
hi def link epicsSubString       String
hi def link epicsSubComment      Comment
hi def link epicsSubPlainMacro   Macro
hi def link epicsSubPatternMacro Macro
"hi def link epicsSubNumber       Number
