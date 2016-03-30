"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UserName: Fangchen Li
" Date: March 28th, 2016
" Description: first official vimrc that mainly consist of 
" my style
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" not Wrap too long lines
set nowrap

" show what I am doing
set modeline

" open files from mac/dos
set fileformats=unix,dos,mac	

" spaces instead of tabs
set expandtab

" open local config files
set exrc	

" don't add white space when I don't tell you to
set nojoinspaces
				
" guess indentation
set autoindent
set smartindent

" Smart Tab :)
set smarttab

" Expand tabs in C files to spaces
au BufRead,BufNewFile *.{c,h,java} set expandtab
au BufRead,BufNewFile *.{c,h,java} set shiftwidth=4
au BufRead,BufNewFile *.{c,h,java} set tabstop=4

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8

" Linebreak at 100 characters
set lbr
set tw=100

" Expand the command line using tab
set wildchar=<Tab>

" show line numbers
set number

" Fold using markers {{{
" like this
" }}}
set foldmethod=marker

" enable all features
set nocompatible

" powerful backspaces
set backspace=indent,eol,start

" not highlight the searchterms
set nohlsearch

" jump to the matches while typing
set incsearch

" ignore case while searching
set ignorecase

" don't wrap words
set textwidth=0

" history
set history=50

" 1000 undo levels
set undolevels=1000

" show a ruler
set ruler

" show partial commands
set showcmd

" show matching braces
set showmatch

" write before hiding a buffer
set autowrite

" allows hidden buffers to stay unsaved, but we do not want this, so comment
" it out:
"set hidden

"set wmh=0

" auto-detect the filetype
filetype plugin indent on

" syntax highlight
syntax on

" we use a light background, don't we?
set bg=light

" Always show the menu, insert longest match
set completeopt=menuone,longest

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
