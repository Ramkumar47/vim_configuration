" This file contains vimfunctions defined for the python script

" script
" initialization---------------------------------------------------------------
function! pythonVimFunctions#InitializeScript()
	" removing any previous entries
	execute "normal! ggVGd"

	" writing script hashbang
	execute "normal! i#!/bin/python3"

	" writing header section
	execute "normal! o\"\"\""
	execute "normal! 100A-"
	execute "normal! 0"
	execute "normal! 79lD"
	execute "normal! o<>"
	execute "normal! o"
	execute "normal! o"
	execute "normal! iRamkumar"
	execute ":r!date"
	execute "normal! o"
	execute "normal! 76A-"
	execute "normal! A\"\"\""

	" writing include modules section
	execute "normal! o"
	execute "normal! o\# importing needed modules"
	execute "normal! oimport numpy as np"
	execute "normal! oimport pandas as pd"
	execute "normal! oimport matplotlib.pyplot as plt"

	" writing horizontal line
	execute "normal! o"
	execute "normal! o\#"
	execute "normal! 78A-"
	execute "normal! o"

	" writing insert stamp
	execute "normal! o<>"
	execute "normal! o"

	" writing horizontal line
	execute "normal! o"
	execute "normal! o\#"
	execute "normal! 78A-"
	execute "normal! gg"

endfunction

" Bracket substitution
" function---------------------------------------------------------------------
function pythonVimFunctions#BracketSub()
		execute "call search\(\"<>\"\)"
		execute "normal! cf>\<Esc>l"
		execute "startinsert"
endfunction

