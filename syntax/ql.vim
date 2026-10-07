" Vim syntax file for the query language (.ql)
" GraphQL + jq + Haxl-flavoured query language over pluggable backends.

if exists("b:current_syntax")
  finish
endif

syn case match

" Comments ---------------------------------------------------------------------
syn keyword qlTodo    contained TODO FIXME XXX NOTE
syn match   qlComment "//.*$" contains=qlTodo
syn region  qlComment start="/\*" end="\*/" contains=qlTodo

" Declarations & keywords ------------------------------------------------------
syn keyword qlKeyword     backend import extend let using implicit headers as GET
syn keyword qlBackendKind HTTP JsonFile DB
syn keyword qlType        string number bool
syn keyword qlBoolean     true false
syn keyword qlConstant    undefined

" Std-lib functions ------------------------------------------------------------
syn keyword qlFunction length avg median sum min max minBy maxBy sortBy
syn keyword qlFunction format trim joinWith env

" Annotations: @id @unique -----------------------------------------------------
syn match qlAnnotation "@\w\+"

" Numbers ----------------------------------------------------------------------
syn match qlNumber "\<\d\+\%(\.\d\+\)\?\>"

" Type names (Capitalised), backend qualifier, foreign-key marker --------------
syn match qlTypeName  "\<\u\w*\>"
syn match qlQualifier "::"
syn match qlFKRef     "&\%(&\)\@!"

" Operators (a lone `/` is division; `//` and `/*` start comments, so exclude those)
syn match qlOperator "??\|&&\|>=\|<=\|/\%([/*]\)\@!\|[|+\-*=<>]"

" Strings ----------------------------------------------------------------------
syn region qlString start=+"+ skip=+\\"+ end=+"+
syn region qlString start=+'+ skip=+\\'+ end=+'+

" Templates: `…` and ```…``` with {…} interpolation holes ----------------------
" Triple-backtick first; the single-backtick start must not be the head of a triple.
syn region qlTemplate matchgroup=qlTemplateDelim start=+```+ end=+```+
      \ keepend contains=qlHole
syn region qlTemplate matchgroup=qlTemplateDelim start=+`\%(``\)\@!+ end=+`+
      \ keepend contains=qlHole
syn region qlHole matchgroup=qlHoleDelim start="{" end="}"
      \ contained contains=qlTemplate,qlFunction,qlNumber,qlString,qlOperator,qlTypeName,qlQualifier,qlFKRef

" Highlight links --------------------------------------------------------------
hi def link qlComment       Comment
hi def link qlTodo          Todo
hi def link qlKeyword       Keyword
hi def link qlBackendKind   StorageClass
hi def link qlType          Type
hi def link qlTypeName      Type
hi def link qlBoolean       Boolean
hi def link qlConstant      Constant
hi def link qlFunction      Function
hi def link qlAnnotation    PreProc
hi def link qlNumber        Number
hi def link qlOperator      Operator
hi def link qlQualifier     Operator
hi def link qlFKRef         Operator
hi def link qlString        String
hi def link qlTemplate      String
hi def link qlTemplateDelim Delimiter
hi def link qlHoleDelim     Special

let b:current_syntax = "ql"
