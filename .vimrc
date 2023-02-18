"vim settings 
syntax enable
set number relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set shiftround
set expandtab

set scrolloff=4
set mouse=nv
set laststatus=2

"autocmds
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END
