" compile latex document
map <buffer> <F5> :! pdflatex %<CR><CR>
" map <buffer> <F10> :update <bar> !pdflatex %<CR><CR>
" open pdf viewer
map <buffer> <F6> :! zathura $(echo % \| sed 's/tex/pdf/') > /dev/null 2>&1 & disown <CR><CR>

" calling function to create begin environment
nnoremap <buffer> <leader>be :call latexVimFunctions#BeginEnv()<cr>

" calling function to initialize latex document
nnoremap <buffer> <leader>id :call latexVimFunctions#InitDoc()<cr>

" calling function to do bracket substitution
nnoremap <buffer> <leader><leader> :call latexVimFunctions#BracketSub()<cr>

" calling function to create tabular environment
nnoremap <buffer> <leader>bt :call latexVimFunctions#CreateTabular()<cr>

" calling function to create math mode
nnoremap <buffer> <leader>mm :call latexVimFunctions#CreateMathMode()<cr>

" compiling bibtex for reference inclusion
map <buffer> <F4> :! bibtex $(echo % \| sed 's/.tex//g') > /dev/null 2>&1 <CR><CR>
