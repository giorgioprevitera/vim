"--------------------------------------------------
" Terminal
"--------------------------------------------------

" Exit terminal mode using Esc
noremap  <silent> <M-`>           :FloatermToggle<CR>i
noremap! <silent> <M-`>           <Esc>:FloatermToggle<CR>i
tnoremap <silent> <M-`>           <C-\><C-n>:FloatermToggle<CR>

"  let height = &lines - 8
"  let width = float2nr(&columns - (&columns * 2 / 10))
"  let col = float2nr((&columns - width) / 2)


let g:floaterm_position = 'center'
let g:floaterm_width = float2nr(&columns - (&columns * 1 / 10))
let g:floaterm_height = &lines - 8
let g:floaterm_winblend = 12
