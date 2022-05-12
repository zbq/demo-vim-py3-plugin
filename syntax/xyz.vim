if exists("b:current_syntax")
  finish
endif

hi def xyzMark term=standout ctermfg=Red guifg=Red
"hi def link xyzMark Error

syn region xyzMark start=/^===>ERROR / end=/^===>/me=s-4

let b:current_syntax = "xyz"
