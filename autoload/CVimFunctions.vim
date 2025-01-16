" This file contains vimfunctions defined for the C/C++ program

" code header
" initialization---------------------------------------------------------------
function! CVimFunctions#InitializeHeader()
    " removing any previous entries
    execute "normal! ggVGd"

    " writing header section
    execute "normal! i/*"
    execute "normal! 100A="
    execute "normal! 0"
    execute "normal! 77lD"
    execute "normal! A*\\"
    execute "normal! o*  <>"
    execute "normal! o"
    execute "normal! o* Ramkumar"
    execute ":r!date"
    execute "normal! I  * "
    execute "normal! o"
    execute "normal! I\\*"
    execute "normal! 75A="
    execute "normal! A*/"

    " writing preprocessor directive
    execute "normal! o"
    execute "normal! o// preprocessor directives"
    execute "normal! o<>"
    execute "normal! o"

    " writing horizontal line
    execute "normal! o"
    execute "normal! o/*"
    execute "normal! 75A-"
    execute "normal! A*/"
    execute "normal! o"

    " writing insert stamp
    execute "normal! o<>"
    execute "normal! o"

    " writing horizontal line
    execute "normal! o"
    execute "normal! o/*"
    execute "normal! 75A-"
    execute "normal! A*/"
    execute "normal! gg"

endfunction

" Bracket substitution
" function---------------------------------------------------------------------
function CVimFunctions#BracketSub()
        execute "call search\(\"<>\"\)"
        execute "normal! cf>\<Esc>l"
        execute "startinsert"
endfunction

