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
let g:NERDTreeShowIgnoredStatus = 1
" let g:NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI=1

"--------------------------------------------------
"Enable ctrl+P
"--------------------------------------------------
" nnoremap <leader>. :CtrlPTag<cr>
"let g:ctrlp_match_window_bottom = 0
"let g:ctrlp_match_window_reversed = 0


"--------------------------------------------------
" The Silver Searcher
"--------------------------------------------------
if executable('rg')
  "Use ag over grep
  set grepprg=rg\ --color\ never\ --no-heading\ --vimgrep

  "Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  "ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
endif


"--------------------------------------------------
" FZF
"--------------------------------------------------

set hidden

nnoremap <c-p> :Files<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>c :Commands<cr>
nnoremap <leader>a :Rg<cr>
nnoremap <leader>hif :History<cr>
nnoremap <leader>hic :History:<cr>
nnoremap <leader>his :History/<cr>
nnoremap <leader>ll :Lines<cr>

let $FZF_DEFAULT_COMMAND='fd --type f'
" let $FZF_DEFAULT_OPTS='--color=bg:#222222 --border --layout=reverse'
let $FZF_DEFAULT_OPTS='--border --layout=reverse'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'


" Define RG, doesn't search file names, only the content
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)


" FZF in floating window
let g:fzf_preview_window = 'down:75%'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')
  let height = float2nr(&lines * 0.9)
  let width = float2nr(&columns * 0.8)
  let col = float2nr((&columns - width) / 2)

  let opts = {
        \ 'relative': 'editor',
        \ 'row': float2nr((&lines - height)/2),
        \ 'col': col,
        \ 'width': width,
        \ 'height': height
        \ }
  call nvim_open_win(buf, v:true, opts)
endfunction
