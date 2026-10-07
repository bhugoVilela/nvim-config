" Vim syntax file for Hush language
" Language: Hush
" Maintainer: Claude
" Last Change: 2025-07-19

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword hushKeyword let if else while fn true false
syn keyword hushBoolean true false

" Variables (starting with $)
syn match hushVariable "\$[a-zA-Z_][a-zA-Z0-9_]*"

" Numbers
syn match hushNumber "\<\d\+\>"

" String literals
syn region hushString start='"' skip='\\"' end='"'
syn region hushString start="'" skip="\\'" end="'"

" Comments (shell-style with #)
syn match hushComment "#.*$"

" Operators
syn match hushOperator "+"
syn match hushOperator "-"
syn match hushOperator "\*"
syn match hushOperator "/"
syn match hushOperator "%"
syn match hushOperator "\*\*"
syn match hushOperator "=="
syn match hushOperator "!="
syn match hushOperator "<"
syn match hushOperator ">"
syn match hushOperator "<="
syn match hushOperator ">="
syn match hushOperator "&&"
syn match hushOperator "||"
syn match hushOperator "&"
syn match hushOperator "|"
syn match hushOperator "\^"
syn match hushOperator "<<"
syn match hushOperator ">>"
syn match hushOperator "!"
syn match hushOperator "\~"
syn match hushOperator "="
syn match hushOperator "+="
syn match hushOperator "-="
syn match hushOperator "\*="
syn match hushOperator "/="
syn match hushOperator "%="
syn match hushOperator "&="
syn match hushOperator "|="
syn match hushOperator "\^="
syn match hushOperator "<<="
syn match hushOperator ">>="
syn match hushOperator "?"
syn match hushOperator ":"

" Special characters
syn match hushSpecial "("
syn match hushSpecial ")"
syn match hushSpecial "{"
syn match hushSpecial "}"
syn match hushSpecial "\["
syn match hushSpecial "\]"
syn match hushSpecial "\."
syn match hushSpecial ","
syn match hushSpecial ";"

" Function calls (identifier followed by parentheses)
syn match hushFunction "\<[a-zA-Z_][a-zA-Z0-9_]*\s*("he=e-1

" Member access
syn match hushMemberAccess "\$[a-zA-Z_][a-zA-Z0-9_]*\.[a-zA-Z_][a-zA-Z0-9_]*"

" Shell commands (commands that don't start with $ and aren't keywords)
" This is a simplified pattern - shell commands can be complex
syn match hushShellCommand "^\s*[a-zA-Z_/\.][a-zA-Z0-9_/\.-]*"
syn match hushShellCommand "\<\(ls\|pwd\|echo\|grep\|cat\|find\|cd\|mkdir\|rm\|cp\|mv\|chmod\|clear\|exit\|whoami\)\>"

" Shell command arguments
syn match hushShellArg "\<[a-zA-Z0-9_/\.-]\+\>" contained

" Escape sequences in strings
syn match hushEscape "\\[ntr\\\"'0]" contained containedin=hushString
syn match hushEscape "\\[\(\)\[\]{}$ ]" contained

" Define highlighting groups
hi def link hushKeyword        Keyword
hi def link hushBoolean        Boolean
hi def link hushVariable       Identifier
hi def link hushNumber         Number
hi def link hushString         String
hi def link hushComment        Comment
hi def link hushOperator       Operator
hi def link hushSpecial        Special
hi def link hushFunction       Function
hi def link hushMemberAccess   Type
hi def link hushShellCommand   Statement
hi def link hushShellArg       Constant
hi def link hushEscape         SpecialChar

" Set commentstring for hush files
setlocal commentstring=#\ %s

let b:current_syntax = "hush"
