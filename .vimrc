" For Plugins (like NERDTree)
execute pathogen#infect()
execute pathogen#helptags()


" Basic behaviour
syntax enable " Show syntax highlighting
set number             " Show line numbers
set backspace=2        " Backspace deletes in insert mode
set expandtab          " Tab key causes spaces to be inserted
set tabstop=4          " Tab key causes 4 spaces to be inserted
set shiftwidth=4       " Indentation uses 4 spaces
set autoindent         " Copy indentation from pervious line when starting new line
set encoding=utf-8
" set paste, can't have set paste and jedi-vim
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

" Commenting blocks of code
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Ignore swapfile warning
set shortmess+=A
