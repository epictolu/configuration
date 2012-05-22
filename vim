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

" Navigation
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l
nmap <leader><leader> <c-^>

" Normal mode mappings
nmap <leader>of :CommandT<cr>
nmap <leader>ob :CommandTBuffer<cr>
nmap <leader>b i{<cr>}<esc>O
nmap <space> <c-f>
nmap <leader><space> <c-b>

" Insert mode mappings
imap <leader>p <c-r>*
imap <leader>b {<cr>}<esc>O

" File 
nmap <leader>mv :call RenameFile()<cr>
nmap <leader>e :e <c-r>=expand("%:h")<cr>/

" C#
imap <leader>cu <esc>ggOusing ;<left>
imap <leader>cc public class <c-r>=expand("%:t:r")<cr><cr>,b
imap <leader>ci public interface <c-r>=expand("%:t:r")<cr><cr>,b

source ~/.vundlerc

" Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
