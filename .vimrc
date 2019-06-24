" For Plugins (like NERDTree)
execute pathogen#infect()
execute pathogen#helptags()

" Enable filetype plugins, needed for go-vim
filetype plugin on

" Basic behaviour
syntax enable " Show syntax highlighting
set nocompatible 
set number             " Show line numbers
set backspace=2        " Backspace deletes in insert mode
set expandtab          " Tab key causes spaces to be inserted
set tabstop=4          " Tab key causes 4 spaces to be inserted
set shiftwidth=4       " Indentation uses 4 spaces
set autoindent         " Copy indentation from pervious line when starting new line
set encoding=utf-8
set paste "Note can't have set paste and jedi-vim
set nohlsearch "Don't like typing noh
set mouse=a "Allows you to use the mouse, can sometimes be handy for massive files
let g:solarized_termcolors=256

set background=light
colorscheme solarized

" Folding (close all folds initiallly)
set foldmethod=indent  " For method/class/function folding use indents
au BufRead * normal zR

" Key mappings
nnoremap ; :
" For switching windows fast
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Commenting blocks of code quickly
autocmd FileType c,cpp,java,scala,go,solidity let b:comment_leader = '// '
autocmd FileType sh,ruby,python      let b:comment_leader = '# '
autocmd FileType conf,fstab          let b:comment_leader = '# '
autocmd FileType vim                 let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Turn off all backup stuff, we have git for this
set nobackup
set nowb
set noswapfile

" Ignore swapfile warning
set shortmess+=A

" Automatically open NERDTree
au VimEnter *  NERDTree

" Show hidden files 
let NERDTreeShowHidden=1
let g:NERDTreeNodeDelimiter = "\u00a0"

" Vim-go config 
" Ignore go-vim req 7.4.2009  warning
let g:go_version_warning = 0
let g:go_fmt_autosave = 0
let g:go_def_mode = 'godef' "much faster than guru
let g:go_fmt_command = "goimports"
let mapleader=","
" ,d to open definition
" ,i to get type info
" ,s to get callstack
autocmd FileType go nmap <Leader>d <Plug>(go-def-vertical) 
autocmd FileType go nmap <Leader>i <Plug>(go-info)
autocmd FileType go nmap <Leader>s <Plug>(go-info)

" copy to clipboard
set clipboard=unnamed
