set nocompatible               " be iMproved
filetype off                   " required!
set number
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
set cmdheight=2
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set ignorecase
set smartcase
set hlsearch
set incsearch
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
syntax enable
set encoding=utf8
set ffs=unix,dos,mac
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai
set si
set wrap
map j gj
map k gk
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" let Vundle manage Vundle
" required! 

filetype plugin indent on     " required!

function! HasPaste()
  if &paste
    return 'PASTE MODE '
  en
  return ''
endfunction

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'repmo.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/mru.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'klen/python-mode'

call vundle#end()
filetype plugin indent on

map L :NERDTreeToggle<cr>
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6
let g:pymode_folding = 0
let g:pymode_lint = 0
