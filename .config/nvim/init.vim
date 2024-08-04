syntax enable
filetype plugin indent on
set number
set relativenumber

call plug#begin()

Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-e> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

Plug 'tpope/vim-surround'
Plug 'rust-lang/rust.vim'
syntax enable
filetype plugin indent on

Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/syntastic'
Plug 'morhetz/gruvbox'
Plug 'ap/vim-css-color'

Plug 'yggdroot/indentline'
Plug 'elkowar/yuck.vim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'xuyuanp/nerdtree-git-plugin'

call plug#end()


let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
	\ 'Modified'  :'✹',
	\ 'Staged'    :'✚',
	\ 'Untracked' :'✭',
	\ 'Renamed'   :'➜',
	\ 'Unmerged'  :'═',
	\ 'Deleted'   :'✖',
	\ 'Dirty'     :'✗',
	\ 'Ignored'   :'☒',
	\ 'Clean'     :'✔︎',
	\ 'Unknown'   :'?',
	\ }
