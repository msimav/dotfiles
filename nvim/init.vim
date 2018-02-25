" Vim Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'AndrewRadev/splitjoin.vim'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim'
Plug 'fatih/vim-go'
Plug 'junegunn/vim-easy-align'
Plug 'mileszs/ack.vim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-commentary'
Plug 'zchee/deoplete-go'
call plug#end()

set nocompatible

syntax on          " syntax highlighting
color dracula
set mouse=a
set history=50     " keep 50 lines of command line history
set ruler          " show the cursor position all the time
set backspace=2    " backspace in insert mode works like normal editor
set scrolloff=999  " keep cursor in the middle of the screen while scrolling up and down.
set nobackup       " do not keep a backup file, use versions instead
set tabstop=2      " number of visual spaces per TAB
set softtabstop=2  " number of spaces in tab when editing
set expandtab      " tabs are spaces
set number         " show line numbers
set showcmd        " show command in bottom bar
filetype indent on " load filetype-specific indent files
set wildmenu       " visual autocomplete for command menu
set lazyredraw     " redraw only when we need to.
set showmatch      " highlight matching [{()}]
set incsearch      " search as characters are entered
let mapleader=","  " leader is comma

set cursorline     " highlight current line
hi CursorLine cterm=NONE ctermbg=8 ctermfg=NONE

if has('persistent_undo')
  set undofile
  set undodir=~/.cache/vim
endif

" neovim python support
let g:python3_host_prog = '/Users/mustafa/.config/nvim/py3neovim/bin/python'

" deocomplete
let g:deoplete#enable_at_startup = 1

" ag.vim
let g:ackprg = 'ag --vimgrep'
nnoremap <leader>a :Ack!<space>

" NERD
nmap <Leader>nn :NERDTreeToggle<CR>

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --ignore-dir .git --hidden -g ""'
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>t :CtrlPTag<CR>

" neomake
call neomake#configure#automake('w')

" Go settings
autocmd Filetype go setlocal tabstop=2
let g:go_fmt_command = "goimports"
autocmd FileType go nmap <leader>gb :GoBuild<CR>
autocmd FileType go nmap <leader>gd :GoDoc<CR>
autocmd FileType go nmap <leader>gt :GoTest<CR>
autocmd FileType go nmap <leader>gg :GoTestFunc<CR>
autocmd FileType go nmap <leader>gc :GoCoverageToggle<CR>
autocmd FileType go nmap <leader>gf :GoAlternate<CR>
autocmd FileType go nmap <leader>gi :GoImplements<CR>

" Quickfix
nnoremap <leader>1 :cn<CR>
nnoremap <leader>2 :cp<CR>
nnoremap <leader>` :cclose<CR>

