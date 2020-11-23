"autoload plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"vim settings 
syntax enable
set number
set ruler

set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set shiftround
set expandtab

set scrolloff=4

set laststatus=2

"syntastic settings
let g:syntastic_mode_map = { 'mode': 'passive' }

call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/syntastic'
call plug#end()

