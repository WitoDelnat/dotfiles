set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'leafgarland/typescript-vim'

call vundle#end()
filetype plugin indent on

let NERDTreeIgnore = ['node_modules']
silent! map <C-b> :NERDTreeToggle<CR>

set ttyfast
set novisualbell
set foldcolumn=1
set scrolloff=10
set ignorecase
set smartcase
set showmatch
set autoread
set incsearch
set hlsearch
set number

noremap <silent> <C-h> <C-W><C-h>
noremap <silent> <C-j> <C-W><C-j>
noremap <silent> <C-k> <C-W><C-k>
noremap <silent> <C-l> <C-W><C-l>

let mapleader = ","
map <leader>, :w<CR>
nnoremap <leader>t :FZF<cr>
nnoremap <leader>f :Buffer<cr>

syntax enable
colorscheme monokai
hi Normal guibg=NONE ctermbg=NONE
set termguicolors

autocmd FileType yaml       setlocal expandtab softtabstop=2 tabstop=2 shiftwidth=2 shiftround
autocmd FileType typescript setlocal expandtab softtabstop=2 tabstop=2 shiftwidth=2 shiftround
autocmd FileType javascript setlocal expandtab softtabstop=2 tabstop=2 shiftwidth=2 shiftround
