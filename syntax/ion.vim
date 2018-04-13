if exists("b:current_syntax")
    finish
endif

syntax keyword ionKeyword typedef enum struct union
syntax keyword ionKeyword var const func
syntax keyword ionKeyword sizeof break continue return
syntax keyword ionKeyword if else
syntax keyword ionKeyword switch case default
syntax keyword ionKeyword while do for

highlight link ionKeyword Keyword

let b:current_syntax = "ion"

