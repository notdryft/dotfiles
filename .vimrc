" Vundle configuration

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on

" General

set expandtab    " Insert spaces instead of tab
set hidden       " Switch between buffers without saving
set number       " Number on lines
set shiftwidth=2 " Indent by 2 spaces
set tabstop=2    " Tab by 2 spaces

syntax enable

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

