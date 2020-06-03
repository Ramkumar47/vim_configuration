" compile latex document
" map <buffer> <F5> :! pdflatex %<CR><CR>
map <buffer> <F5> :update <bar> !pdflatex %<CR><CR>
" open pdf viewer
map <buffer> <F6> :! zathura $(echo % \| sed 's/tex/pdf/') & disown <CR><CR>


" function to define latex
" environment------------------------------------------------------------------
function! BeginEnv()
		" getting environment name
		call inputsave()
		let envName = input("Environment Name: ")
		call inputrestore()

		"defining environment
		execute "normal! o\\begin{".envName."}"
		execute "normal! o\\end{".envName."}\<Esc>O%"
endfunction
nnoremap <buffer> <leader>be :call BeginEnv()<cr>
