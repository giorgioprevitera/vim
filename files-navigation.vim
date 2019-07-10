"--------------------------------------------------
" Ctrl space
"--------------------------------------------------
nnoremap <C-space> :CtrlSpace<CR>
set hidden
set nocompatible



"--------------------------------------------------
"NerdTree toggler
"--------------------------------------------------
nmap <silent> <leader>p :NERDTreeToggle<CR>
nnoremap <leader>rf :NERDTreeFind<CR>
let NERDTreeMapMenu='n'
let g:NERDTreeWinSize=60


"--------------------------------------------------
"Enable ctrl+P
"--------------------------------------------------
nnoremap <leader>. :CtrlPTag<cr>
"let g:ctrlp_match_window_bottom = 0
"let g:ctrlp_match_window_reversed = 0


"--------------------------------------------------
" The Silver Searcher
"--------------------------------------------------
if executable('ag')
  "Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  "Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  "ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


"--------------------------------------------------
" Tagbar
"--------------------------------------------------
nmap <silent> <leader>t :TagbarToggle<CR>
nmap <silent> <leader>tr :!ctags -R --tag-relative -o .git/tags .<CR>
