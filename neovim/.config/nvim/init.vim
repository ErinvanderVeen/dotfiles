" Load the plugins
" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-latex/vim-latex'           " LaTeX
Plug 'camilstaps/vim-clean'          " Clean
Plug 'camilstaps/vim-bb'             " Blackboard Feedback
Plug 'camilstaps/vim-smv'            " NuSMV
Plug 'ErinvanderVeen/vim-smt2'       " SMT2
Plug 'godlygeek/tabular'             " Align on characters
Plug 'aurieh/discord.nvim'           " Discord Rich presence
Plug 'airblade/vim-gitgutter'        " Git in Vim
Plug 'machakann/vim-highlightedyank' " Highlighted Yanking

" Initialize plugin system
call plug#end()

" Non-plugin settings
scriptencoding utf-8
set encoding=utf-8

set tabstop=4
set shiftwidth=4
set noexpandtab

set cc=80
set linebreak
set nu
set dir=~/.swp
set listchars=nbsp:¬,tab:❥\ ,extends:»,precedes:«,trail:•
set list

" Use system clipboard
set clipboard=unnamedplus

" Move through long lines as they were short multiple lines
map j gj
map <down> j
map k gk
map <up> k

let g:tex_flavor='latex'

" Unset colorcolumn for Clean and Tex files
au BufEnter *.{icl,dcl} set cc=""
au FileType tex set cc=""

" Set vim-latex to output pdf
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
