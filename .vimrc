"autoload plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



"vim settings 
syntax enable
set number relativenumber
set ruler

set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set shiftround
set expandtab

set scrolloff=4

set laststatus=2



"autocmds
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END



"syntastic settings
let g:syntastic_mode_map = { 'mode': 'passive' }



"plugins
call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/syntastic'
call plug#end()

