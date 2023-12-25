set number
set relativenumber
set ruler
set smartindent
set autoindent
set copyindent
filetype plugin indent on
set encoding=utf-8
" FORMATTING
set tabstop=8
set shiftwidth=8
set softtabstop=8
set expandtab
set expandtab
set noshiftround
set wrap
set laststatus=2
set showmode
set showcmd
" SEARCH
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

colorscheme evening
set termguicolors
set t_Co=256
set background=dark

syntax on

set tabstop=4
set shiftwidth=4
set expandtab

set wildmenu
set hidden

set wildignore=*.exe,*.dll,*.pdb


map <Space> <Leader>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500


set guioptions-=m
set guioptions-=T
set guioptions-=r

set cursorline

call plug#begin('~/vimplugins')

"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'liuchengxu/vim-which-key'


call plug#end()

nnoremap <silent> <C-f> :Files<CR>


function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    nmap <buffer> gi <plug>(lsp-definition)
    nmap <buffer> gd <plug>(lsp-declaration)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gl <plug>(lsp-document-diagnostics)
    nmap <buffer> <f2> <plug>(lsp-rename)
    nmap <buffer> <f3> <plug>(lsp-hover)
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

set spell

set is

set ignorecase
set smartcase

set gp=git\ grep\ -n
set ruler

packadd! matchit


hi Normal guibg=NONE ctermbg=NONE


