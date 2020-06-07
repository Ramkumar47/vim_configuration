"------------------------------------------------------------------------------
" Personal Vim Configuration
"------------------------------------------------------------------------------

" setting relative line numbering
set number relativenumber

" plugin install
" section----------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

	" seti colorscheme plugin
	Plug 'trusktr/seti.vim'

	" commenting plugin
	Plug 'scrooloose/nerdcommenter'

	" overall syntax highlighting
	Plug 'sheerun/vim-polyglot'

	" alignment pluging
	Plug 'junegunn/vim-easy-align'

	" airline statusbar
	Plug 'vim-airline/vim-airline'

call plug#end()

" setting leader key
let mapleader = " "

" setting colorscheme
syntax on
colorscheme seti

" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" incremental search
" highlighting-----------------------------------------------------------------
set incsearch

" open new files in the same directory as the open file; mainly in gvim
set autochdir

" automatic indentation
set autoindent

" Remove trailing whitespace on
" save-------------------------------------------------------------------------
autocmd BufWritePre * %s/\s\+$//e

" enable smart search - case-insensitivity search - case-sensitive when having upper case letters in search string
set ignorecase
set smartcase

" smart tabbing with
" spaces-----------------------------------------------------------------------
set smarttab
set tabstop=4

" enable mouse in
" vim--------------------------------------------------------------------------
set mouse=a

" set current line and column
" highlighting-----------------------------------------------------------------
set cursorline
set cursorcolumn

" fix splitting
" direction--------------------------------------------------------------------
set splitbelow splitright

" Enable and disable auto commenting on next line when pressing enter
" setlocal formatoptions-=cro " disables that feature
" setlocal formatoptions=cro " enables that feature

" " set GUI
" " options----------------------------------------------------------------------
" set guioptions-=m  " remove menu bar
" set guioptions-=T  " remove toolbar
" set guioptions-=r  " remove right-hand scroll bar
" set guioptions-=L  " remove left-hand scroll bar

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

" easy align shortcut for markdown
" table------------------------------------------------------------------------
au FileType markdown map <tab> vip :EasyAlign*<Bar><Enter>

" vim-airline
" customizations---------------------------------------------------------------
let g:airline_section_c = '%<%f'

" Latex filetype, changing default plaintex to tex
" format-----------------------------------------------------------------------
autocmd BufNew,FileType plaintex exec ":set filetype=tex"

" setting filetype to cpp mainly for OpenFOAM
" files------------------------------------------------------------------------
nnoremap <buffer> <leader>fc :set filetype=cpp<cr>
