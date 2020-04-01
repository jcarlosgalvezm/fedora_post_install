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

" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
