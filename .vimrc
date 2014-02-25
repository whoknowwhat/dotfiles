set nocompatible   
set ci                "c indent
set si                "smart indent
set ai                "auto indent
set nowrap
set nobackup       
set softtabstop=4
set tabstop=4         "tab stop = 4      
set shiftwidth=4      " << >>   = 4
set expandtab
set showcmd
set showmatch       
set ignorecase        " ignore case when search
set incsearch       
set autowrite       
set title
set nu                "display line number	    

set fileencodings=utf-8,euc-kr
set bs=2

set diffopt+=iwhite  "ignore white spaces for vimdiff

set statusline=%4*%m%3*%<%F%3*%=%5*\ Lines\ %3l\ Columns\ %c\ %p%%\ %4*%m
set laststatus=2

set visualbell	
set hlsearch		 "highlight when searching the keyword

syntax enable
colorscheme molokai

call pathogen#infect()
filetype plugin indent on
