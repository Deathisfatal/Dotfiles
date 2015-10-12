call pathogen#infect()
filetype off
syntax on
filetype plugin indent on
set number

nmap <F8> :TagbarToggle<CR>


set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"


let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>                " turn off YCM
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>                "turn on YCM
let g:jedi#show_call_signatures = "0"

set nocompatible
set hidden
set cursorline
set colorcolumn=80,120
set spell
set spellsuggest=best,10
set ignorecase
set smartcase
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

