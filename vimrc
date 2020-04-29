" setting relative line numbering
set number relativenumber

call plug#begin('~/.vim/plugged')

	" seti colorscheme plugin
	Plug 'trusktr/seti.vim'

	" commenting plugin
	Plug 'scrooloose/nerdcommenter'

	" overall syntax highlighting
	Plug 'sheerun/vim-polyglot'

call plug#end()

" setting leader key
let mapleader = " "

" setting colorscheme
syntax on
colorscheme seti

" incremental search highlighting
set incsearch

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" enable smart search - case-insensitivity search - case-sensitive when having upper case letters in search string
set ignorecase
set smartcase

" enable mouse in vim
set mouse=a

" set current line and column highlighting
set cursorline
set cursorcolumn

" tab autocompletion on the bottom status bar
set wildmode=longest,list,full

" fix splitting direction
set splitbelow splitright

" Enable and disable auto commenting on next line when pressing enter
" setlocal formatoptions-=cro " disables that feature
" setlocal formatoptions=cro " enables that feature


" nerd commenter options-------------------------
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
