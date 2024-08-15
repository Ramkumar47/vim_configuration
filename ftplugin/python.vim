" compile Processing python sketch
map <buffer> <F6> :update <bar> !java -jar ~/.scripts/processing-py.jar %<CR><CR>
map <buffer> <leader>is :call pythonVimFunctions#InitializeScript()<CR>

" calling function to do bracket substitution
nnoremap <buffer> <leader><leader> :call pythonVimFunctions#BracketSub()<cr>

