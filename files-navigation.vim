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
" Clap
"--------------------------------------------------

set hidden

nnoremap <c-p> :Clap files<cr>
nnoremap <leader>f :Clap files<cr>
nnoremap <leader>b :Clap buffers<cr>
nnoremap <leader>cc :Clap <cr>
nnoremap <leader>a :Clap grep2<cr>
nnoremap <leader>r :Clap grep<cr>
nnoremap <leader>hif :Clap history<cr>
nnoremap <leader>hic :Clap command_history:<cr>
nnoremap <leader>his :Clap search_history<cr>
nnoremap <leader>ll :Clap lines<cr>
nnoremap <leader>s :Clap blines<cr>
nnoremap <leader>co :Clap coc_outline<cr>

let g:clap_disable_run_rooter = v:true
let g:clap_theme = 'material_design_dark'
let g:clap_layout = { 'relative': 'editor' }
let g:clap_provider_q = {
      \ 'source': ['~/.vim/colors.vim', '~/.vim/vimrc', '~/.vim/plugins.vim', '~/.zshrc'],
      \ 'sink': 'e',
      \ }

"--------------------------------------------------
" Skylight
"--------------------------------------------------

nnoremap <silent>       gp    :Skylight!<CR>
vnoremap <silent>       gp    :Skylight!<CR>

"--------------------------------------------------
" FZF
"--------------------------------------------------
if (match(system("uname -s"), "Darwin") != -1)
let $FZF_DEFAULT_COMMAND='fd --type f'
else
let $FZF_DEFAULT_COMMAND='fdfind --type f'
endif

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

" Define BD command - delete buffers in fzf
function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
  \ 'source': s:list_buffers(),
  \ 'sink*': { lines -> s:delete_buffers(lines) },
  \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
\ }))



