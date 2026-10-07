" Filetype settings for the query language (.ql)

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

" `//` line comments and `/* … */` block comments.
setlocal commentstring=//\ %s
setlocal comments=s1:/*,mb:*,ex:*/,://

let b:undo_ftplugin = "setlocal commentstring< comments<"
