" Vundle configuration

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'derekwyatt/vim-scala'
Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on

" General

set showcmd      " Show when leader is pressed
set expandtab    " Insert spaces instead of tab
set hidden       " Switch between buffers without saving
set number       " Number on lines
set shiftwidth=2 " Indent by 2 spaces
set tabstop=2    " Tab by 2 spaces

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Buffers

nmap <c-n> :bnext<cr>
nmap <c-p> :bprev<cr>

" Search

set incsearch
set ignorecase
set smartcase
set hlsearch
nmap <leader>q :nohlsearch<cr>

" Mappings

nmap <leader>l :setlocal number!<cr>
nmap <leader>o :set paste!<cr>

" Tab mappings

map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove
