set go=
set nobackup 
set noswapfile 
set guifont=SimSun:h20
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set ignorecase
set smartcase
set clipboard=unnamed
set nocompatible
set wrap
set textwidth=0
set hidden
set ffs=dos
set relativenumber
colorscheme koehler

syntax on

highlight Normal guifg=gray guibg=black

" Use devenv compiler (msbuild) when editing .cs files
if !exists("autocommands_loaded")
let autocommands_loaded = 1
autocmd BufNewFile,BufRead *.ps1 setfiletype ps1
endif

inoremap <c-j> <c-r>=TriggerSnippet()<cr>

let mapleader = ","

" Command mode mappings
cmap <leader>p <c-r>*

" Normal mode mappings
nmap <leader>w <c-w>
nmap <leader>o :CommandT<cr>
nmap <leader>t :NERDTreeFind<cr>
nmap <leader>n :cn<cr>
nmap <leader>p :cp<cr>
nmap <leader>b i{<cr>}<esc>O
nmap <space> <c-f>
nmap <leader><space> <c-b>

" Insert mode mappings
imap <leader>p <esc>pa
imap <leader>b {<cr>}<esc>O

source ~/.vundlerc

" NERDTree Configuration
let NERDTreeQuitOnOpen=1
