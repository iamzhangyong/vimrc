autocmd BufWritePost $MYVIMRC source $MYVIMRC

let mapleader=";"

syntax enable
syntax on
filetype on
filetype plugin indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

vnoremap <Leader>y "+y
nmap <Leader>p "+p

nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>WQ :wa<CR>:q<CR>

nnoremap nw <C-W><C-W>
nnoremap <Leader>lw <C-W>l
nnoremap <Leader>hw <C-W>h
nnoremap <Leader>kw <C-W>k
nnoremap <Leader>jw <C-W>j

nmap <Leader>M %

set incsearch
set ignorecase
set nocompatible
set wildmenu

set laststatus=2
set ruler
set number
set cursorline
"set cursorcolumn
set hlsearch
set nowrap


call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-syntastic/syntastic'
Plug 'ycm-core/YouCompleteMe'
Plug 'szw/vim-maximizer'

call plug#end()

set runtimepath^=~/.vim/plugged/ctrlp.vim

"nerdtree
map <F2> :NERDTreeToggle<CR>
map <leader>v :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
:set modifiable

"vim-indent-guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

"ctrlp
let g:ctrlp_map='<Leader>p'
let g:ctrlp_cmd='CtrlP'
nmap <Leader>f :CtrlPMRU<CR>
nmap <Leader>b :CtrlPBuffer<CR>

let g:ctrlp_root_markers = ['Cargo.toml']
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1


"rust
let g:rustfmt_autosave=1

"YouCompleteMe
"配置默认文件路径
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_confirm_extra_conf = 0
set completeopt=longest,menu
"自动开启语义补全
let g:ycm_seed_identifiers_with_syntax = 1
"在注释中也开启补全
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"字符串中也开启补全
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
"开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files = 1
"开始补全的字符数
let g:ycm_min_num_of_chars_for_completion = 2
"补全后自动关闭预览窗口
let g:ycm_autoclose_preview_window_after_completion = 1
"禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
"整合UltiSnips的提示
let g:ycm_use_ultisnips_completer = 1
"在实现和声明之间跳转,并分屏打开
let g:ycm_goto_buffer_command = 'horizontal-split'
nnoremap <Leader>g :YcmCompleter GoTo<CR>
"与syntastic有冲突，建议关闭
let g:ycm_show_diagnostics_ui = 0
"let g:ycm_error_symbol = '>>'
"let g:ycm_warning_symbol = '>>'
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_echo_current_diagnostic = 0

"vim-maximizer
nnoremap <silent><F3> :MaximizerToggle<CR>
vnoremap <silent><F3> :MaximizerToggle<CR>gv
inoremap <silent><F3> <C-o>:MaximizerToggle<CR>

