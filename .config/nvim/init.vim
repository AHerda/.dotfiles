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
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-e> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

Plug 'tpope/vim-surround'
Plug 'rust-lang/rust.vim'
Plug 'sheerun/vim-polyglot'
Plug 'yggdroot/indentline'

call plug#end()
