set number relativenumber

call plug#begin('~/.vim/plugged')

" seti colorscheme plugin
Plug 'trusktr/seti.vim'

" commenting plugin
Plug 'scrooloose/nerdcommenter'

" overall syntax highlighting
Plug 'sheerun/vim-polyglot'

" molokail colorscheme plugin
Plug 'tomasr/molokai'

call plug#end()

" setting leader key
let mapleader = " "

" setting colorscheme
syntax on
colorscheme seti 

" incremental search highlighting 
set incsearch

filetype plugin on

" searchdown into subfolders
" provides tab completion for all file-related tasks
set path+=**

" display all matching files when doing tab-complete
set wildmenu
