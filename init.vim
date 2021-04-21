" General

let g:mapleader = ','
let g:asmsyntax = 'nasm'

syntax enable
set hidden

" set nowrap

set encoding=utf-8
set pumheight=10
set fileencoding=utf-8
set ruler
" set cmdheight=2
set iskeyword+=-
set mouse=a
set splitbelow
set splitright
set t_Co=256
set conceallevel=0
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent 
set autoindent
set laststatus=0
" set cursorline
set number relativenumber
" No terminal mode number lines
autocmd TermOpen * setlocal nonumber
autocmd TermOpen * setlocal norelativenumber

set formatoptions-=cro
set clipboard=unnamedplus
au! BufWritePost $MYVIMRC source %


if !exists('g:vscode')
    " Mappings
    " Ctrl + hjkl to resize windows
    nnoremap <C-j>    :resize -2<CR>
    nnoremap <C-k>    :resize +2<CR>
    nnoremap <C-h>    :vertical resize -2<CR>
    nnoremap <C-l>    :vertical resize +2<CR>
    " Buffer
    nnoremap <TAB> :bnext<CR>
    nnoremap <S-TAB> :bprevious<CR>

    " Better tabbing
    vnoremap < <gv
    vnoremap > >gv

    " Better window navigation
    nnoremap <M-h> <C-w>h
    nnoremap <M-j> <C-w>j
    nnoremap <M-k> <C-w>k
    nnoremap <M-l> <C-w>l

    " Map <C-\> <C-n> to <Esc>
    tnoremap <Esc> <C-\><C-n>

    " Open Terminal
    nnoremap <Leader>t :terminal<CR>

    nnoremap <Leader>v <C-W>v

    nnoremap <Leader>q :Bdelete<CR>

    " Plugins conf files
    source $HOME/.config/nvim/vim-plug/plugins.vim
    source $HOME/.config/nvim/vim-plug/airline.vim
else
    source $HOME/.config/nvim/vscode/settings.vim
endif
