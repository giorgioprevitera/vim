"--------------------------------------------------
" Git Fugitive
"--------------------------------------------------
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>
set diffopt+=vertical



"--------------------------------------------------
" Git gutter
"--------------------------------------------------
let g:gitgutter_sign_modified = ""
let g:gitgutter_sign_added = ""
let g:gitgutter_sign_removed = ""


"--------------------------------------------------
" Gitv
"--------------------------------------------------
" Don't fold git diffs
augroup git
    au!
    autocmd FileType git :setlocal foldlevel=99
augroup END

let g:Gitv_OpenHorizontal = 1