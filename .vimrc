" Vundle configuration
set nocompatible
filetype off
set rtp +=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'groenewege/vim-less'
Plugin 'elzr/vim-json'

call vundle#end()
filetype plugin indent on
" end Vundle configuration

" Indentation
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent

" Searching
set hlsearch
set incsearch

" Misc
syntax on
set number

