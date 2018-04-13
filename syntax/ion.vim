if exists("b:current_syntax")
    finish
endif

" Statements
syntax keyword ionConditional if else switch case default
syntax keyword ionRepeat for while do
syntax keyword ionStatement sizeof break continue return

" Comments
syn region ionCommentL start="//" skip="\\$" end="$" keepend contain
syn region ionComment matchgroup=ionCommentStart start="/\*" end="\*/" extend

" Integer Numbers
syn match ionDecimalInt display "\<\(0\|[1-9]\d*\)[uU]\?"
syn match ionOctalInt   display "\<0\o\+[uU]\?"
syn match ionHexInt     display "\<0[xX]\x\+[uU]\?"

" Float Numbers
syn match ionFloat display "\<\d\+\.\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="
syn match ionFloat display "\<\.\d\+\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="
syn match ionFloat display "\<\d\+[eE][+-]\=\d\+\(lf\|LF\|f\|F\)\="
syn match ionFloat display "\<\d\+\.\d\+\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="

syntax keyword ionStructure enum struct union
syntax keyword ionKeyword var const func

syntax keyword ionType void char int float

highlight link ionConditional Conditional
highlight link ionRepeat Repeat
highlight link ionStatement Statement
highlight link ionCommentL ionComment
highlight link ionCommentStart ionComment
highlight link ionComment Comment
highlight link ionDecimalInt ionInteger
highlight link ionOctalInt   ionInteger
highlight link ionHexInt     ionInteger
highlight link ionInteger Number
highlight link ionFloat Float


let b:current_syntax = "ion"

