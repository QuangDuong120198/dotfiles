call plug#begin('~/.vim/plugged')
" editorconfig
Plug 'editorconfig/editorconfig-vim'
" syntax highlight
Plug 'sheerun/vim-polyglot'
" nerdtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
" navigator
Plug 'christoomey/vim-tmux-navigator'
" comment
Plug 'preservim/nerdcommenter'
" statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" file icon
Plug 'ryanoasis/vim-devicons'
" git
Plug 'tpope/vim-fugitive'
call plug#end()

set encoding=UTF-8

set number

set cursorline

set smartcase

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent

set splitbelow
set splitright

set showcmd

set showmatch

set autoindent

set incsearch
set hlsearch

set magic

set wrap

set autoindent
set autoread

set guifont=Ubuntu_Mono_Nerd_Font_Complete:h12

set guicursor=i:ver25-iCursor

syntax enable
syntax on

set termguicolors

" vim-polyglot
let g:polyglot_disabled = ['latex']

" editorconfig-vim
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:loaded_EditorConfig = 1

" nerdtree
let g:NERDTreeWinSize = 24
let g:NERDTreeShowGitStatus = 1

" tmux navigator
let g:tmux_navigator_save_on_switch = 2

" nerdcommenter
let g:NERDSpaceDelims = 1

" airline, airline-theme
let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1

" latex
let g:tex_flavor = 'latex'

au FileType cs,java,python,tex,makefile setlocal shiftwidth=4 tabstop=4
au FileType makefile setlocal expandtab=0
au BufNewFile,BufRead *.cls set filetype=tex
au BufNewFile,BufRead *.sty set filetype=tex

map <F3> :set nohlsearch!<CR>

" keymap for nerdtree and nerdtree tab
nnoremap <silent> <space>tf  :<C-u>NERDTreeFocus<CR>
nnoremap <silent> <space>tto :<C-u>NERDTreeTabsOpen<CR>
nnoremap <silent> <space>ttc :<C-u>NERDTreeTabsClose<CR>
nnoremap <silent> <space>ttt :<C-u>NERDTreeTabsToggle<CR>

highlight Normal guibg=NONE ctermbg=NONE
