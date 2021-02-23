" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/vim-easy-align'

" Initialize plugin system
call plug#end()

" Dont bother with vi compatibility
set nocompatible

" enable syntax highlighting
syntax enable

set autoindent
set autoread
set clipboard=unnamed
set encoding=utf-8
set expandtab
set smarttab
set shiftwidth=4
set number
set showcmd
set ruler

" set formatoptions=a

"highlight ColorColumn ctermbg=gray
"set colorcolumn=80
highlight OverLength ctermbg=gray ctermfg=white
match OverLength /\%81v.\+/

" Enable basic mouse behaviour such as resizing buffers
set mouse=a
if exists('$TMUX')	" Support resizign in tmux
    set ttymouse=xterm2
endif

nmap <C-n> :NERDTreeToggle<CR>

