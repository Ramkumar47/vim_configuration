" This file contains general vim functions that were needed irrespective
" of filetypes

" header line custom
" function---------------------------------------------------------------------
function! generalVimFunctions#HoriDash()
	normal! mM
	normal! 100A-
	normal! 0
	normal! 79lD
	normal! `M
endfunction

" clean buffer before
" write------------------------------------------------------------------------
function! generalVimFunctions#CleanBuffer()
		" remove trailing whitespaces
		normal! mM
		%s/\s\+$//g
		normal! `M
endfunction
