if exists("b:current_syntax")
    finish
endif

" Statements
syntax keyword ionConditional if else switch case default
syntax keyword ionRepeat      for while do
syntax keyword ionStatement   sizeof break continue return

syntax keyword ionStructure enum struct union typedef
syntax keyword ionKeyword   var const func foreign

syntax keyword ionConstant true false NULL

syntax keyword ionType      void
syntax keyword ionType      bool
syntax keyword ionType      char schar uchar int8 uint8
syntax keyword ionType      short ushort int16 uint16
syntax keyword ionType      int uint int32 uint32
syntax keyword ionType      long ulong
syntax keyword ionType      llong ullong int64 uint64
syntax keyword ionType      float double

" Comments
syn region ionCommentL start="//" skip="\\$" end="$" keepend
syn match ionComment  "/\*.*\*/"

" Integer Numbers
syn case ignore
syn match ionDecimalInt display "\<\(0\|[1-9]\d*\)\(u\=l\{0,2}\|ll\=u\)\>"
syn match ionBinaryInt  display "\<0b[01]\+\>"
syn match ionOctalInt   display "\<0\o\+\(u\=l\{0,2}\|ll\=u\)\>"
syn match ionHexInt     display "\<0x\x\+\(u\=l\{0,2}\|ll\=u\)\>"

" Float Numbers
syn match ionFloat display "\<\d\+\.\(e[+-]\=\d\+\)\=d\="
syn match ionFloat display "\<\.\d\+\(e[+-]\=\d\+\)\=d\="
syn match ionFloat display "\<\d\+e[+-]\=\d\+d\="
syn match ionFloat display "\<\d\+\.\d\+\(e[+-]\=\d\+\)\=d\="
syn case match

" Strings
syn match  ionSpecialError     contained "\\."
syn match  ionSpecialCharError contained "[^']"
syn match  ionSpecial          contained display "\\\(x\x\+\|\o\{1,3}\|.\|$\)"
syn match  ionSpecialChar      contained +\\["\\'0abfnrtvx]+
syn region ionString           start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=ionSpecial,ionSpecialError
syn region ionStringMultiline  start=+"""+ end=+"""+ keepend contains=ionSpecial,ionSpecialError
syn match  ionCharacter        "L\='[^\\]'"
syn match  ionCharacter        "L'[^']*'" contains=ionSpecial

highlight default link ionConditional  Conditional
highlight default link ionRepeat       Repeat
highlight default link ionStatement    Statement
highlight default link ionCommentL     ionComment
highlight default link ionCommentStart ionComment
highlight default link ionComment      Comment
highlight default link ionDecimalInt   ionInteger
highlight default link ionBinaryInt    ionInteger
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
highlight default link ionStringMultiline  String
highlight default link ionCharacter        Character
highlight default link ionSpecial          SpecialChar
highlight default link ionSpecialChar      SpecialChar

let b:current_syntax = "ion"

