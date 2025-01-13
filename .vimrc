syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green

let mapleader = ","
nnoremap <leader>b :tabnew<cr>
inoremap <leader>b <C-c>:tabnew<cr>
nnoremap <leader>m :tabn<cr>
inoremap <leader>m <C-c>:tabn<cr>
nnoremap <leader>n :tabp<cr>
inoremap <leader>n <C-c>:tabp<cr>
nnoremap <leader>e :E<cr>
inoremap <leader>e <C-c>:E<cr>
