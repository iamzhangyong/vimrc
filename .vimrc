syntax enable
filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'rust-lang/rust.vim'

call plug#end()


"NERDTree
autocmd vimenter * NERDTree
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
