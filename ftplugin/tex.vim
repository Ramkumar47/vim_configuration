" compile latex document
" map <buffer> <F5> :! pdflatex %<CR><CR>
map <buffer> <F5> :update <bar> !pdflatex %<CR><CR>
" open pdf viewer
map <buffer> <F6> :! zathura $(echo % \| sed 's/tex/pdf/') & disown <CR><CR>
