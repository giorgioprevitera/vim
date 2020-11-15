"--------------------------------------------------
" Git Fugitive
"--------------------------------------------------
nnoremap <Leader>gs :20Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>
if has('nvim')
    set diffopt+=vertical
endif

let g:fubitive_domain_pattern = 'bitbucket\.ipttools\.info'

"--------------------------------------------------
" Git gutter
"--------------------------------------------------
let g:gitgutter_sign_modified = ""
let g:gitgutter_sign_added = ""
let g:gitgutter_sign_removed = ""
