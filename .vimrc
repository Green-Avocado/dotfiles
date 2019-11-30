if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set number
let g:livepreview_previewer = 'qpdfview'

call plug#begin('~/.vim/plugged')

  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()
