" Vim filetype plugin file
" Language:     Pony
" Maintainer:   Jak Wings
" Last Change:  2016 May 25

if exists('b:did_ftplugin')
  finish
endif

let s:cpo_save = &cpo
set cpo&vim


setlocal comments=://,nsr:/*,mb:*,ex:*/
setlocal commentstring=/*%s*/
setlocal formatoptions-=t formatoptions+=croqlj

setlocal path=
setlocal includeexpr=
setlocal include=\\v^\\s*use\\_s+%(\\i+\\_s*\\=\\_s*)?"\\zs[^"]*\\ze"
setlocal define=\\v^\\s*%(actor\|class\|struct\|primitive\|trait\|interface\|type\|new\|be\|fun\|let\|var\|embed\|use\|for\\_s+%(\\i+\\_s*,\\_s*)*\|with\\_s+%(\\i+\\_s*,\\_s*)*)\|(<\\i+\\_s*:\\_s*\\i+)@=
setlocal isident=@,48-57,_,39
setlocal iskeyword=@,48-57,_,39
setlocal suffixesadd=.pony
setlocal matchpairs=(:),{:},[:]

let b:match_ignorecase = 0
let b:match_skip = 's:Comment\|String\|Character\|CaseGuard'
let b:match_words = '\v<%(ifdef|if|match|while|for|repeat|try|with|recover|object|lambda)>\m:\v<%(then|elseif|else|until|do|in)>|\|\m:\<end\>,(:),\[:\],{:}'
" TODO: for more concise behavior
"let b:match_words = 'pony#GetMatchWords()'
source $VIMRUNTIME/macros/matchit.vim


let &cpo = s:cpo_save
unlet s:cpo_save

let b:did_ftplugin = 1
