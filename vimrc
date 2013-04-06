call pathogen#incubate()
call pathogen#helptags()

set nocompatible
 
syntax on
colorscheme lucius
"colorscheme mustang
set background=dark

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smartindent
set autoindent
 
set hlsearch
set incsearch
set showmatch
 
set number

filetype on
filetype plugin on

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

match ErrorMsg '\%>80v.\+'
set colorcolumn=80
set transparency=5
set noswapfile


nnoremap <F8> :!/usr/local/bin/ctags -R --python-kinds=-i *.py<CR>
nnoremap <F4> :TlistToggle<CR>
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Use_Right_Window = 1
" filetype off

let g:pymode_options_indent = 1
" filetype plugin indent on
" syntax on
" autocmd BufWritePre *.py normal m`:%s/\s\+$//e``
