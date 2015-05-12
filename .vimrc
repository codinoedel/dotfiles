set t_Co=256

" begin Vundle configuration
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

" Move cursor to beginning of tab
"set list lcs=tab:\ \

" Indentation
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent

" Show file name as status bar
set statusline+=%F
set laststatus=2
set ruler

" Filetype-specific
au FileType javascript setlocal sw=2 ts=2 sts=2
au FileType c setlocal sw=4 ts=4 sts=4
au FileType c++ setlocal sw=4 ts=4 sts=4
au FileType ruby setlocal sw=2 ts=2 sts=2
au FileType dot setlocal sw=2 ts=2 sts=2

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
set background=dark
syntax enable
colorscheme Distinguished

set number
set autoread
set foldmethod=manual
nnoremap <S-Enter> O<Esc>j
nnoremap <CR> o<Esc>k
nnoremap <silent> <C-l> :nohl<CR><C-l>

execute pathogen#infect()

command! -range=% -nargs=0 Tab2Space execute '<line1>,<line2>s#^\t\+#\=repeat(" ", len(submatch(0))*' . &ts . ')'
nmap <Leader><Leader> :w<CR>:make! \| botright cwindow<CR>
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
hi Normal ctermbg=NONE
hi Comment ctermbg=NONE
