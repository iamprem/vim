" ~/.vimrc
" Originally written by: Lisa McCutcheon
" On the date:           Wed Feb 07, 2007
" Adapted/Altered by:    Brandon Milton
"                        http://github.com/brandonio21


" **************************************
" * VARIABLES
" **************************************
set nocompatible        " get rid of strict vi compatibility!
filetype off

" Vundle settings (plugin manager)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() "Start plugin loading

Plugin 'gmarik/Vundle.vim' "Plugin manager plugin

Plugin 'tpope/vim-fugitive' "Git plugin

Plugin 'bling/vim-airline' "statusbar plugin

Plugin 'flazz/vim-colorschemes' "so many colors~

Plugin 'tpope/vim-vinegar' " so bitter

call vundle#end()
filetype plugin indent on

set nu              	" line numbering on
set autoindent          " autoindent on
set noerrorbells        " bye bye bells :)
set modeline            " show what I'm doing
set showmode            " show the mode on the dedicated line (see above)
set nowrap          	" no wrapping!
set ignorecase          " search without regards to case
set backspace=indent,eol,start  " backspace over everything
set fileformats=unix,dos,mac    " open files from mac/dos
set colorcolumn=80	" Draws a red line at 80 character limit
set exrc  	        " open local config files
set nojoinspaces        " don't add white space when I don't tell you to
set ruler           	" which line am I on?
set showmatch           " ensure Dyck language
set incsearch           " incremental searching
set nohlsearch          " meh
set bs=2                " fix backspacing in insert mode
set bg=light
set laststatus=2	" Always have statusbar showing
set term=xterm-256color	" Make colors pretty!
set termencoding=utf-8	" ALlow for symbols
set encoding=utf-8	" moar symbols
set background=dark

let g:airline_powerline_fonts=1	"Make powerline symbols show



" Expand tabs in C files to spaces
au BufRead,BufNewFile *.{c,h,java,php,cpp} set expandtab
au BufRead,BufNewFile *.{c,h,java,php,cpp} set shiftwidth=2
au BufRead,BufNewFile *.{c,h,java,php,cpp} set tabstop=2

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8

" Be sure to set the syntax for markdown files
au BufRead,BufNewfile *.md set syntax=mkd

" Show syntax
syntax on

" This is my prefered colorscheme, open a file with gvim to view others
"colors elflord
colors railscasts

" For switching between many opened file by using ctrl+l or ctrl+h
map <C-J> :next <CR>
map <C-K> :prev <CR>

" Spelling toggle via F10 and F11
map <F10> <Esc>setlocal spell spelllang=en_us<CR>
map <F11> <Esc>setlocal nospell<CR>



