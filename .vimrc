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

"syntastic settings
let g:syntastic_quiet_messages = { 'type': 'style' }

call plug#begin('~/.vim/plugged')

    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    Plug 'vim-airline/vim-airline'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/syntastic'

call plug#end()

