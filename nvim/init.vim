:set number
:set autoindent
:set smarttab
:set mouse=a

call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'


Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " highlight 
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation

" para o momento de edicao
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'https://github.com/jiangmiao/auto-pairs'

" colorscheme 
Plug 'sickill/vim-monokai'
Plug 'https://github.com/sainnhe/sonokai'
Plug 'https://github.com/sainnhe/everforest'

call plug#end()

autocmd VimEnter * :TSBufEnable highlight " Com esse comando toda vez q o vim é aberto, é ativo automaticamente o highlight
nnoremap <C-x> :TSToggle highlight<CR>


" Algumas alteracoes de atalhos
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-p> :tabnext<Cr>
nnoremap <C-o> :tabprevious<CR>
nnoremap <C-w> :w<CR>
nnoremap <C-q> :q!<CR>
nmap <F7> :TagbarToggle<CR>


:colorscheme monokai

let g:fzf_command_prefix=":"

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"


let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

