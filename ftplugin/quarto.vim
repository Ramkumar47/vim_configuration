" initializing new quarto section
map <buffer> <leader>is :call quartoVimFunctions#InitializeSection()<CR>

" calling function to do bracket substitution
nnoremap <buffer> <leader><leader> :call quartoVimFunctions#BracketSub()<cr>

" calling function to do columns initialization
nnoremap <buffer> <leader>ic :call quartoVimFunctions#InitializeColumns()<cr>

