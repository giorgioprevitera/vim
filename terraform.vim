"--------------------------------------------------
" Terraform docs lookup
"--------------------------------------------------

command! -nargs=* Tfdoc :call system('tfdoc' . ' ' . <q-args>)
nnoremap <silent> <Leader>tfr :Tfdoc <C-R><C-W><CR>
nnoremap <silent> <Leader>tfd :Tfdoc -d <C-R><C-W><CR>

