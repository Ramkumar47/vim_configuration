" compile Processing python sketch
map <buffer> <F6> :update <bar> !java -jar ~/.scripts/processing-py.jar %<CR><CR>

" initializing new python script
map <buffer> <leader>is :call pythonVimFunctions#InitializeScript()<CR>

" initializing plotting section in python script
map <buffer> <leader>ip :call pythonVimFunctions#InitializePlot()<CR>

" calling function to do bracket substitution
nnoremap <buffer> <leader><leader> :call pythonVimFunctions#BracketSub()<cr>

