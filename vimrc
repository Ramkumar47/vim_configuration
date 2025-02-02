"------------------------------------------------------------------------------
" Personal Vim Configuration
"------------------------------------------------------------------------------

" setting relative line numbering
set number relativenumber

" plugin install
" section----------------------------------------------------------------------

" let g:plugs_disabled = ['vim-airline','vim-table-mode','nerdcommenter','vim-easy-align']
let g:plugs_disabled = []

call plug#begin('~/.vim/plugged')

    " commenting plugin
    Plug 'scrooloose/nerdcommenter'

    " vim table mode
    Plug 'dhruvasagar/vim-table-mode'

    " vim-easy-align
    Plug 'junegunn/vim-easy-align'

    " call plug_disable#commit()

call plug#end()

" setting leader key
let mapleader = " "

" setting colorscheme
let fortran_free_source=1
syntax on
colorscheme seti

" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" set encoding
set encoding=utf-8

" set shiftwidth
set shiftwidth=4

" incremental search
" highlighting-----------------------------------------------------------------
set incsearch

" open new files in the same directory as the open file; mainly in gvim
set autochdir

" automatic indentation
set autoindent

" Remove trailing whitespace on
" save-------------------------------------------------------------------------
autocmd BufWritePre * :call generalVimFunctions#CleanBuffer()

" enable smart search - case-insensitivity search - case-sensitive when having upper case letters in search string
set ignorecase
set smartcase

" smart tabbing with
" spaces-----------------------------------------------------------------------
set smarttab
set tabstop=4

" " enable mouse in
" " vim--------------------------------------------------------------------------
" set mouse=a
" disable mouse in
" vim--------------------------------------------------------------------------
set mouse-=a

" set current line and column
" highlighting-----------------------------------------------------------------
set cursorline
set cursorcolumn

" fix splitting
" direction--------------------------------------------------------------------
set splitbelow splitright

" " set GUI
" " options----------------------------------------------------------------------
set guioptions-=m  " remove menu bar
set guioptions-=T  " remove toolbar
set guioptions-=r  " remove right-hand scroll bar
set guioptions-=L  " remove left-hand scroll bar

" set color column margin
set colorcolumn=80

" show commands entered in normal mode at lower right corner
set showcmd

" nerd commenter
" options----------------------------------------------------------------------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


" " custom statusline
" " option-----------------------------------------------------------------------
" set laststatus=2 " enabling statusline in single buffer also
" set statusline=%<%f " filename
" set statusline+=\ \ %y%r%m " file type, readonly notifier and modifier flag
" set statusline+=\ %=\ \ [%l\/%L] " line number / total number of lines
" set statusline+=\ \Col:\ %-4c\ BufferNo:\ %n" current column number

" header line custom call
" function---------------------------------------------------------------------
nnoremap <leader>hl :call generalVimFunctions#HoriDash()<cr>

" custom tab converting
" function---------------------------------------------------------------------
nnoremap <leader>rt :call generalVimFunctions#ConvertTab()<cr>

" vim-airline
" customizations---------------------------------------------------------------
let g:airline_section_c = '%<%f'
let g:airline_powerline_fonts = 1

" Latex filetype, changing default plaintex to tex
" format-----------------------------------------------------------------------
autocmd BufNew,FileType plaintex exec ":set filetype=tex"

" setting filetype to cpp mainly for OpenFOAM
" files------------------------------------------------------------------------
nnoremap <leader>fc :set filetype=cpp<cr>

" setting filetype to java for Processing
" files------------------------------------------------------------------------
nnoremap <leader>fj :set filetype=java<cr>

" vim-table plugin
" options----------------------------------------------------------------------
let g:table_mode_corner='|' " this enables markdown type table corner

" Enable and disable auto commenting on next line when pressing
" enter------------------------------------------------------------------------
" setlocal formatoptions-=cro " disables that feature
" set formatoptions-=o " disables that feature
" setlocal formatoptions=cro " enables that feature
" tried to remove from core, but it is repetitive and following is a better
" solution it seems
autocmd Filetype * set formatoptions-=o

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

set backspace=2



" custom statusline
" option-----------------------------------------------------------------------
hi NormalColor guifg=#c0c0c0 guibg=#0000ff ctermbg=21 ctermfg=7 cterm=bold
hi InsertColor guifg=#808080 guibg=#c0c0c0 ctermbg=5 ctermfg=7 cterm=bold
hi UnsavedColor guifg=#808080 guibg=#c0c0c0 ctermbg=5 ctermfg=7 cterm=bold
hi ReplaceColor guifg=#080808 guibg=#ffffff ctermbg=231 ctermfg=232 cterm=bold
hi VisualColor guifg=#000000 guibg=#ff5f00 ctermbg=202 ctermfg=0 cterm=bold
hi CommandColor guifg=#000000 guibg=#008080 ctermbg=8 ctermfg=7 cterm=bold
hi ResetColor guifg=#ffffff guibg=#000000 gui=bold ctermbg=0 cterm=bold
set laststatus=2 " enabling statusline in single buffer also

" set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
" set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ INSERT\ ':''}
" set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ REPLACE\ ':''}
" set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
" set statusline+=%#VisualColor#%{(mode()=='')?'\ \ VISUAL-BLOCK\ ':''}
" set statusline+=%#CommandColor#%{(mode()=='c')?'\ \ COMMAND\ ':''}
" set statusline+=%#ResetColor#\ \ %<%f " filename
" set statusline+=\ \ %y%r%m " file type, readonly notifier and modifier flag
" set statusline+=\ %=\ \ [%l\/%L] " line number / total number of lines
" set statusline+=\ \Col:\ %-1c\ B:\ %n " current column number

function! StatusVisualBlock()
	set laststatus=2 " enabling statusline in single buffer also
	set statusline=%#VisualColor#%{'\ \ VISUAL-BLOCK\ '}
	set statusline+=%#ResetColor#\ \ %<%f " filename
	set statusline+=\ \ %y%r%#UnsavedColor#%m%#ResetColor# " file type, readonly notifier and modifier flag
	set statusline+=\ %=\ \ [%l\/%L] " line number / total number of lines
	set statusline+=\ \Col:\ %-1c\ B:\ %n " current column number
endfunction

function! StatusNormal()
	set laststatus=2 " enabling statusline in single buffer also
	set statusline=%#NormalColor#%{'\ \ NORMAL\ '}
	set statusline+=%#ResetColor#\ \%<%f " filename
	set statusline+=\ \ %y%r%#UnsavedColor#%m%#ResetColor# " file type, readonly notifier and modifier flag
	set statusline+=\ %=\ \ [%l\/%L] " line number / total number of lines
	set statusline+=\ \Col:\ %-1c\ B:\ %n " current column number
endfunction

function! StatusVisual()
	set laststatus=2 " enabling statusline in single buffer also
	set statusline=%#VisualColor#%{'\ \ VISUAL\ '}
	set statusline+=%#ResetColor#\ \ %<%f " filename
	set statusline+=\ \ %y%r%#UnsavedColor#%m%#ResetColor# " file type, readonly notifier and modifier flag
	set statusline+=\ %=\ \ [%l\/%L] " line number / total number of lines
	set statusline+=\ \Col:\ %-1c\ B:\ %n " current column number
endfunction

function! StatusInsert()
	set laststatus=2 " enabling statusline in single buffer also
	set statusline=%#InsertColor#%{'\ \ INSERT\ '}
	set statusline+=%#ResetColor#\ \ %<%f " filename
	set statusline+=\ \ %y%r%#UnsavedColor#%m%#ResetColor# " file type, readonly notifier and modifier flag
	set statusline+=\ %=\ \ [%l\/%L] " line number / total number of lines
	set statusline+=\ \Col:\ %-1c\ B:\ %n " current column number
endfunction

function! StatusCommand()
	set laststatus=2 " enabling statusline in single buffer also
	set statusline=%#CommandColor#%{'\ \ COMMAND\ '}
	set statusline+=%#ResetColor#\ \ %<%f " filename
	set statusline+=\ \ %y%r%#UnsavedColor#%m%#ResetColor# " file type, readonly notifier and modifier flag
	set statusline+=\ %=\ \ [%l\/%L] " line number / total number of lines
	set statusline+=\ \Col:\ %-1c\ B:\ %n " current column number
endfunction

augroup CustomStatusLineSetup
	autocmd!
	autocmd ModeChanged *:* call StatusVisualBlock()
	autocmd ModeChanged *:v* call StatusVisual()
	autocmd ModeChanged *:V* call StatusVisual()
	autocmd ModeChanged *:n* call StatusNormal()
	autocmd ModeChanged *:i* call StatusInsert()
	autocmd ModeChanged *:c* call StatusCommand()
	autocmd VimEnter * call StatusNormal()
augroup END
