"set nocompatible               " be iMproved
"filetype off                   " required!
"
"call vundle#rc()
"
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

syntax enable
set background=dark
colorscheme jellybeans
set number
"set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
autocmd BufWritePre *.module :%s/\s\+$//e
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.inc :%s/\s\+$//e
set nocompatible
set hlsearch
"set backspace=indent,eol,start
set mouse=a
"set comments=sr:/*,mb:*,ex:*/
"check syntax with Ctrl + L
autocmd FileType php noremap <C-L> :!/usr/bin/env php -l %<CR>
autocmd FileType phtml noremap <C-L> :!/usr/bin/env php -l %<CR>

"bundles
call pathogen#infect()
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"set runtimepath^=~/.vim/bundle/dfrank_util
"set runtimepath^=~/.vim/bundle/indexer
"set runtimepath^=~/.vim/bundle/vimprj

"let g:indexer_indexerListFilename='/Users/work/.vim/.indexer_files'
"let g:netrw_browse_split=4
"let g:netrw_winsize=20
let Tlist_WinWidth = 40

map <F2> :TlistToggle<CR>
"map <C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
:nmap <C-N><C-N> :set invnumber<CR>
:nmap <C-a><C-a> :tabnew<CR>

if $VIM_CRONTAB == "true"
set nobackup
set nowritebackup
endif

set colorcolumn=80

"let @w = 'ki/*<80>kb* **/j' 
let @w = 'ki/**/kV=A '
let @e = 'f$mqveykO@param mixed p`ql'
