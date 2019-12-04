"autoload plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"vim defaults
set number
syntax enable
set ruler
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"latex-live-preview settings
let g:livepreview_previewer = 'qpdfview'

"lightline settings
set laststatus=2
set noshowmode

call plug#begin('~/.vim/plugged')

    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    Plug 'itchyny/lightline.vim'
    Plug 'scrooloose/nerdtree'

call plug#end()

