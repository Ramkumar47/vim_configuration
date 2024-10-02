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
    execute "normal! 100A="
    execute "normal! 0"
    execute "normal! 79lD"
    execute "normal! o<>"
    execute "normal! o"
    execute "normal! o"
    execute "normal! iRamkumar"
    execute ":r!date"
    execute "normal! o"
    execute "normal! 76A="
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
    execute "normal! 78A="
    execute "normal! o"

    " writing insert stamp
    execute "normal! o<>"
    execute "normal! o"

    " writing horizontal line
    execute "normal! o"
    execute "normal! o\#"
    execute "normal! 78A="
    execute "normal! gg"

endfunction

" Bracket substitution
" function---------------------------------------------------------------------
function pythonVimFunctions#BracketSub()
        execute "call search\(\"<>\"\)"
        execute "normal! cf>\<Esc>l"
        execute "startinsert"
endfunction

" matplotlib plot
" initialization---------------------------------------------------------------
function! pythonVimFunctions#InitializePlot()
    " marking current position
    execute "normal! mA"

    " setting plot font size
    execute "normal! iplt.rcParams.update({\"font.size\":15})"

    " defining main figure
    execute "normal! oplt.figure(figsize=(16,9))"
    execute "normal! oplt.plot(<>)"
    execute "normal! oplt.grid()"
    execute "normal! oplt.xlabel(<>)"
    execute "normal! oplt.ylabel(<>)"
    execute "normal! oplt.title(<>)"
    execute "normal! o\# plt.legend(loc=(1.01,0.75))"
    execute "normal! o\# plt.savefig(<>,bbox_inches=\"tight\")"
    execute "normal! oplt.show()"
    execute "normal! o"

    " going back to old position
    execute "normal! \'A"

endfunction

