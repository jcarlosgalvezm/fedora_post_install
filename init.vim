call plug#begin()
Plug 'w0rp/ale'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4

let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 1

let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'],}

let g:ale_fix_on_save = 1
