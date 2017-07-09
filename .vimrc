set nocompatible

so ~/.vim/plugins.vim

syntax enable

"Set colorscheme to something"
"colorscheme atom-dark-256"

"Set the leader key to ,"
let mapleader = ","

"Activate line numbers"
set number

"Activate incremental search"
set incsearch

"Set tab size to 4 spaces"
set tabstop=4

"----------Splits----------"
set splitbelow
set splitright

"Several mappings for easy navigation between splits"
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"----------Mappings----------"
"Create a mapping to quickly open the .vimrc file in normale mode."
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Create a mapping to save with Control + S"
nmap <C-S> :w<cr>

"Toggle NerdTree"
nmap <C-B> :NERDTreeToggle<cr>

"Toggle CtrlP symbol finder"
nmap <C-R> :CtrlPBufTag<cr>

"Toggle most recently used files overview"
nmap <C-E> :CtrlPMRUFiles<cr>

"----------Ctrl-P plugin configuration----------"
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"----------NerdTree plugins configuration----------"
let NERDTreeHijackNetrw = 0

"----------Auto-Commands----------"
"Auto source the .vimrc file on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
