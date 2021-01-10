"let mapleader = ","

" vim-plug
call plug#begin('~/.vim/plugged')

" plugin section
"Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" end vim-plug
call plug#end()

" filetype plugin indent on
" Set tab width and indentations with spaces (no hard tabs) 
set expandtab
set shiftwidth=2
set softtabstop=2

set autoindent
set number " enable line numbering
set relativenumber
"syntax enable " syntax highlighting enabled

" KEY MAPPINGS
"set timeoutlen=300
"inoremap fj <C-c>l
"inoremap jf <C-c>l


" SNIPPETS

"function ReactFunction()
"	:read ~/.vim/templates/ReactFunction.sh
"endfunction



