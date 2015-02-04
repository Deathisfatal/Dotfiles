execute pathogen#infect()
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

