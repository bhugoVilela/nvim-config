" Vim syntax file for JLisp
" Language: JLisp
" Last Change: 2026-04-08

if exists("b:current_syntax")
  finish
endif

" Special forms
syn keyword jlispSpecialForm const let set! fn function do if quote and or
syn keyword jlispSpecialForm defmacro import module-export try doc quasiquote

" Stdlib macros (control flow)
syn keyword jlispSpecialForm for while do-while when unless cond

" Booleans & nil
syn keyword jlispBoolean true false nil

" Builtins
syn keyword jlispBuiltin list head tail cons push! pop! print throw
syn keyword jlispBuiltin hash-map get map-set! map-delete! has? keys vals merge!
syn keyword jlispBuiltin not length nth apply type-of concat read-file string->number
syn keyword jlispBuiltin sort time-ms load reload quit clear reset help

" Numeric operators
syn keyword jlispOperator + - * / < > <= >= == !=

" Numbers
syn match jlispNumber "\<-\?\d\+\(\.\d\+\)\?\>"

" Strings
syn region jlispString start='"' skip='\\"' end='"' contains=jlispEscape
syn match jlispEscape "\\[ntr\\\"0]" contained

" Comments
syn match jlispComment ";.*$"

" Quoting
syn match jlispQuote "'" nextgroup=jlispSymbol
syn match jlispQuasiquote "`" nextgroup=jlispSymbol
syn match jlispUnquote "\~"
syn match jlispUnquote ",@\?"

" Lambda shorthand
syn match jlispLambda "\\"
syn match jlispLambdaArg "\$\d\+"

" Parens and braces
syn match jlispParen "[(){}]"

" Symbols with special suffixes
syn match jlispMutable "[a-zA-Z_][a-zA-Z0-9_\-]*!"
syn match jlispPredicate "[a-zA-Z_][a-zA-Z0-9_\-]*?"

" Define highlighting
hi def link jlispSpecialForm  Keyword
hi def link jlispBoolean      Boolean
hi def link jlispBuiltin      Function
hi def link jlispOperator     Operator
hi def link jlispNumber       Number
hi def link jlispString       String
hi def link jlispEscape       SpecialChar
hi def link jlispComment      Comment
hi def link jlispQuote        Special
hi def link jlispQuasiquote   Special
hi def link jlispUnquote      Special
hi def link jlispParen        Delimiter
hi def link jlispLambda       Special
hi def link jlispLambdaArg   Identifier
hi def link jlispMutable      Type
hi def link jlispPredicate    Conditional

setlocal commentstring=;\ %s
setlocal lisp

let b:current_syntax = "jlisp"
