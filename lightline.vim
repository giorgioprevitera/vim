let g:lightline = {
    \ 'colorscheme': 'deus',
    \ 'active': {
    \   'left': [ [ 'cwd', 'filename', 'modified' ],
    \             [ 'readonly', ] ],
    \   'right': [ [ 'gitbranch', 'lineinfo', ],
    \              ['percent'],
    \              ['filetype'], ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'GitBranch',
    \   'filename': 'LightlineFilename',
    \   'cwd': 'LightlineCwd',
    \ },
    \ }

function! LightlineFilename()
    return expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

function! LightlineCwd()
    return substitute(getcwd(), '^.*/', '', '')
endfunction

function! GitBranch()
    return ' ' . FugitiveHead()
endfunction
