set backspace=2        " Backspace deletes in insert mode
set expandtab          " Tab key causes spaces to be inserted
set tabstop=4          " Tab key causes 4 spaces to be inserted
set shiftwidth=4       " Indentation uses 4 spaces
syntax on              " Show syntax highlighting
set number             " Show line numbers
set foldmethod=indent  " For method/class/function folding use indents
au BufRead * normal zR " Automatic command to unfold everything
set colorcolumn=75     " Show 75 char column
nmap oo o<Esc>         " Type o twice to insert empty line without insert mode
