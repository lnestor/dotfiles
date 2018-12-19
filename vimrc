colorscheme moody " specifies color scheme

" === Settings ===
set t_Co=256
set background=dark " needed for color scheme I think
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
set shiftwidth=2 " number of spaces per > (?)
set expandtab " tabs are spaces
set number " show line numbers
" set relativenumber " show relative line numbers
set list listchars=tab:»·,trail:·,nbsp:· " Display whitespace
set splitbelow " set default splitting to below and to the right
set splitright
set ruler " show the cursor position
set showcmd " show command in bottom bar
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{( )}]
set autoindent " autoindent ya know?
set smartindent
set visualbell " flash on the screen instead of beeping
set noswapfile " don't use swp files
set backspace=2 " make backspace work like most other programs
set shell=zsh

" === Remaps ===
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap ,R :w<cr>:!bundle exec rspec %<cr>
nnoremap ,r :w<cr>:execute '!bundle exec rspec ' . expand('%') . ':' . line('.')<cr>

nnoremap ,Y :!run_specs_in_vagrant %<cr>
nnoremap ,y :execute '!run_specs_in_vagrant ' . expand('%') . ':' . line('.')<cr>

nnoremap ,e :!zsource<cr>

" === Plugins ===
call plug#begin('~/.vim/plugged')

" Plug '/usr/local/opt/fzf'
" Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary' " Comment lines with a command
Plug 'kchmck/vim-coffee-script'
" Plug 'airblade/vim-gitgutter' " Show git changes in the gutter
" Plug 'elixir-editors/vim-elixir'

call plug#end()
