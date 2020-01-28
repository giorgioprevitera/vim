"--------------------------------------------------
" Ctrl space
"--------------------------------------------------
nnoremap <C-space> :CtrlSpace<CR>
" set hidden
" set nocompatible



"--------------------------------------------------
"NerdTree toggler
"--------------------------------------------------
nmap <silent> <leader>p :NERDTreeToggle<CR>
nnoremap <leader>rf :NERDTreeFind<CR>
let NERDTreeMapMenu='n'
let g:NERDTreeWinSize=50
let g:NERDTreeQuitOnOpen = 1


"--------------------------------------------------
"Enable ctrl+P
"--------------------------------------------------
" nnoremap <leader>. :CtrlPTag<cr>
"let g:ctrlp_match_window_bottom = 0
"let g:ctrlp_match_window_reversed = 0


"--------------------------------------------------
" The Silver Searcher
"--------------------------------------------------
if executable('ag')
  "Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  "Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  "ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
endif


"--------------------------------------------------
" FZF
"--------------------------------------------------

set hidden

let $FZF_DEFAULT_OPTS='--layout=reverse'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

nnoremap <c-p> :Files<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>c :BCommits<cr>
nnoremap <leader>a :Ag<cr>
nnoremap <leader>h :History:<cr>

" FZF in floating window
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(&lines * 0.5)
  let width = float2nr(&columns - (&columns * 2 / 6))
  let col = float2nr((&columns - width) / 2)
  let row = float2nr((&lines - height - 10) / 2)

  let opts = {
        \ 'relative': 'editor',
        \ 'row': row,
        \ 'col': col,
        \ 'width': width,
        \ 'height': height
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction
