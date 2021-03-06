"--------------------------------------------------
" Python
"--------------------------------------------------
let g:pyenv#auto_activate = 1

nnoremap <leader>tp :Pytest function<CR>
nnoremap <leader>tps :Pytest function -s<CR>
nnoremap <leader>tpf :Pytest file<CR>
nnoremap <leader>tpfs :Pytest file -s<CR>
nnoremap <leader>tpp :Pytest project<CR>
nnoremap <leader>tpps :Pytest project -s<CR>

if (match(system("uname -s"), "Darwin") != -1)
    let g:python3_host_prog =  $HOME . '/.pyenv/shims/python'
else
    let g:python3_host_prog =  '/usr/bin/python3'
endif

