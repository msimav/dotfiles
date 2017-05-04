set nocompatible
filetype off

set gfn=inconsolata:h15

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set nobackup		" do not keep a backup file, use versions instead

syntax on               " syntax highlighting
set mouse=a
set history=50		" keep 50 lines of command line history
set number              " line numbers
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set autoindent		" always set autoindenting on
set backspace=2         " backspace in insert mode works like normal editor
set scrolloff=999       " keep cursor in the middle of the screen while scrolling up and down.
set cursorline          " show location of cursor using a horizontal line.
hi CursorLine cterm=NONE ctermbg=8 ctermfg=NONE


imap jj <Esc>
nmap hh ^
