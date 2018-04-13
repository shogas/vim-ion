if exists("b:current_syntax")
    finish
endif

syntax keyword ionKeyword if

highlight link ionKeyword Keyword

let b:current_syntax = "ion"

