let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'gitbranch', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filename': 'LightlineFilename',
      \ },
      \ }

function! LightlineFilename()
        return expand('%:f') !=# '' ? expand('%:f') : '[No Name]'
endfunction
