syntax enable
filetype plugin indent on
set number
set relativenumber

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

Plug 'scrooloose/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons'

Plug 'rust-lang/rust.vim'
Plug 'sheerun/vim-polyglot'
Plug 'yggdroot/indentline'

call plug#end()
