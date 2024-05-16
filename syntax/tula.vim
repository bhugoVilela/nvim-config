" Quit if a syntax file is already being loaded
if exists("b:current_syntax")
 finish
endif

" Clear old syntax to avoid clashes
syn clear

" Define the syntax groups
syn keyword tulaKeyword tape let case
syn keyword tulaForKeyword for conceal cchar=∀
syn keyword tulaInKeyword in conceal cchar=∈
syn match tulaComment "--.*"
syn match tulaInterpreterFlags "\[.*\]"
syn match tulaBrace "[{}]"
syn match tulaArrowLeft "<-"
syn match tulaArrowRight "->"

" Link syntax groups to highlight groups
hi def link tulaKeyword Keyword
hi def link tulaForKeyword Keyword
hi def link tulaInKeyword Keyword
hi def link tulaNumber Number
hi def link tulaBrace Delimiter
hi def link tulaArrowLeft Operator
hi def link tulaArrowRight Operator
hi def link tulaComment Comment
hi def link tulaInterpreterFlags Comment

hi! link Conceal Keyword " ctermbg=Red ctermfg=none guibg=#ff0000 guifg=none



" Set the syntax for the file type
let b:current_syntax = "tula"
