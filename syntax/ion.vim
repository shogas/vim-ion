if exists("b:current_syntax")
    finish
endif

" Statements
syntax keyword ionConditional if else switch case default
syntax keyword ionRepeat      for while do
syntax keyword ionStatement   sizeof break continue return

syntax keyword ionStructure enum struct union typedef
syntax keyword ionKeyword   var const func

syntax keyword ionConstant true false null

syntax keyword ionType      void
syntax keyword ionType      bool
syntax keyword ionType      char schar uchar
syntax keyword ionType      short ushort
syntax keyword ionType      int uint
syntax keyword ionType      long ulong
syntax keyword ionType      llong ullong
syntax keyword ionType      float double

" Comments
syn region ionCommentL start="//" skip="\\$" end="$" keepend
syn region ionComment  matchgroup=ionCommentStart start="/\*" end="\*/" extend

" Integer Numbers
syn match ionDecimalInt display "\<\(0\|[1-9]\d*\)[uU]\?"
syn match ionOctalInt   display "\<0\o\+[uU]\?"
syn match ionHexInt     display "\<0[xX]\x\+[uU]\?"

" Float Numbers
syn match ionFloat display "\<\d\+\.\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="
syn match ionFloat display "\<\.\d\+\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="
syn match ionFloat display "\<\d\+[eE][+-]\=\d\+\(lf\|LF\|f\|F\)\="
syn match ionFloat display "\<\d\+\.\d\+\([eE][+-]\=\d\+\)\=\(lf\|LF\|f\|F\)\="

syn match	ionSpecial	display contained "\\\(x\x\+\|\o\{1,3}\|.\|$\)"
syn match   ionSpecialError     contained "\\."
syn match   ionSpecialCharError contained "[^']"
syn match   ionSpecialChar      contained +\\["\\'0abfnrtvx]+
syn region	ionString           start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=ionSpecialChar,ionSpecialError
syn match	ionCharacter        "L\='[^\\]'"
syn match	ionCharacter        "L'[^']*'" contains=ionSpecial

highlight default link ionConditional  Conditional
highlight default link ionRepeat       Repeat
highlight default link ionStatement    Statement
highlight default link ionCommentL     ionComment
highlight default link ionCommentStart ionComment
highlight default link ionComment      Comment
highlight default link ionDecimalInt   ionInteger
highlight default link ionOctalInt     ionInteger
highlight default link ionHexInt       ionInteger
highlight default link ionInteger      Number
highlight default link ionFloat        Float
highlight default link ionStructure    Structure
highlight default link ionType         Type
highlight default link ionKeyword      Keyword
highlight default link ionConstant     Constant

highlight default link ionSpecialError     Error
highlight default link ionSpecialCharError Error
highlight default link ionString           String
highlight default link ionCharacter        Character
highlight default link ionSpecialChar      SpecialChar


let b:current_syntax = "ion"

