" This file contains vimfunctions defined for the quarto script

" section
" initialization---------------------------------------------------------------
function! quartoVimFunctions#InitializeSection()

    " writing section skeleton
	execute "normal! o\:\:\:\{}"
    execute "normal! o\<\>"
    execute "normal! o\:\:\:"
    execute "normal! 2kf\{l"
    execute "startinsert"

endfunction

" Bracket substitution
" function---------------------------------------------------------------------
function quartoVimFunctions#BracketSub()
	execute "call search\(\"<>\"\)"
	execute "normal! cf>\<Esc>l"
	execute "startinsert"
endfunction

" columns initialization
" function---------------------------------------------------------------------
function quartoVimFunctions#InitializeColumns()

    " writing columns skeleton
	execute "normal! o\:\:\:\:\{.columns .v-center-container\}"
    execute "normal! o\:\:\:\:"
    execute "normal! k"

endfunction

