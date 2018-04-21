if exists("b:did_indent")
    finish
endif

setlocal cindent cinoptions& cinoptions+=L0
set indentexpr=GetIonIndent(v:lnum)

if exists("*GetIonIndent")
    finish
endif

let s:keepcpo = &cpo
set cpo&vim

let s:maxoff = 50  " Maximum number of lines to look backwards for ()

function GetIonIndent(lnum)

    " Ion is very similar to C. Use built-in C indenting, then correct some
    " cases
    let iden = cindent(v:lnum)

    let prevlnum = prevnonblank(v:lnum-1)
    if getline(prevlnum) =~ "^\\s*[_a-zA-Z]\\?[_a-zA-Z0-9]*\\s*:"
        if getline(v:lnum) !~ "^\\s*}"
            let iden = indent(prevlnum)
        endif
    endif

    return iden
endfunction

let &cpo = s:keepcpo
unlet s:keepcpo
let b:did_indent = 1
