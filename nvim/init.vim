syntax on          " syntax highlighting
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

" jk is escape
inoremap jk <esc>

" ag.vim
let g:ackprg = 'ag --vimgrep'
nnoremap <leader>a :Ack!<space>

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --ignore-dir .git --hidden -g ""'
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>t :CtrlPTag<CR>

" Vim Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mileszs/ack.vim'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

