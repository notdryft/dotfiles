" Vundle configuration

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'vim-ruby/vim-ruby'

Plugin 'NLKNguyen/papercolor-theme'
Plugin 'derekwyatt/vim-scala'
Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
Plugin 'ensime/ensime-vim'
Plugin 'fatih/vim-go'
Plugin 'gmarik/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on

" General

set backspace=2  " Make backspace work like most other apps
set showcmd      " Show when leader is pressed
set expandtab    " Insert spaces instead of tab
set hidden       " Switch between buffers without saving
set number       " Number on lines
set shiftwidth=2 " Indent by 2 spaces
set tabstop=2    " Tab by 2 spaces

syntax enable
set background=dark
set t_Co=256
colorscheme PaperColor

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

" Scalafmt

noremap <C-d> :sh<cr>

noremap <leader>f :Autoformat<cr>
let g:formatdef_scalafmt = "'scalafmt'"
let g:formatters_scala = ['scalafmt']

" Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
