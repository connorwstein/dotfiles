" Basic behaviour
syntax on              " Show syntax highlighting
set number             " Show line numbers
set colorcolumn=75     " Show 75 char column
set backspace=2        " Backspace deletes in insert mode
set expandtab          " Tab key causes spaces to be inserted
set tabstop=4          " Tab key causes 4 spaces to be inserted
set shiftwidth=4       " Indentation uses 4 spaces
set autoindent         " Copy indentation from pervious line when starting new line

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

" For Plugins (like NERDTree)
execute pathogen#infect()
