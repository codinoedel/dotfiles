" Vundle configuration
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'groenewege/vim-less'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-surround'

call vundle#end()            " required
filetype plugin indent on    " required
" end Vundle configuration

" Indentation
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent

" Filetype-specific
au FileType javascript setlocal sw=2 ts=2 sts=2
au FileType ruby setlocal sw=2 ts=2 sts=2

" Trailing whitespace
au BufWrite * :%s/\s\+$//e

" Searching & Buffers
set hlsearch
set ignorecase
set path+=**
set hidden
nnoremap <C-b> :buffers<CR>:buffer<space>
nnoremap <C-l> :cnext<CR>
nnoremap <C-k> :cprev<CR>

" Closing Braces
inoremap {<CR>  {<CR>}<Esc>O
" Misc
syntax enable
set number
set autoread
set foldmethod=manual
nnoremap <S-Enter> O<Esc>j
nnoremap <CR> o<Esc>k
nnoremap <silent> <C-l> :nohl<CR><C-l>

execute pathogen#infect()
colorscheme Distinguished
command! -range=% -nargs=0 Tab2Space execute '<line1>,<line2>s#^\t\+#\=repeat(" ", len(submatch(0))*' . &ts . ')'
nmap <Leader><Leader> :w<CR>:make! \| botright cwindow<CR>
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
hi Normal ctermbg=NONE
hi Comment ctermbg=NONE
