"--------------------------------------------------
" Ale
"--------------------------------------------------
let g:ale_fix_on_save = 1
" let g:ale_linters_explicit = 1
" let g:ale_linters = {
"     \ 'sh': ['shellcheck'],
"     \ }

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace', 'prettier'],
\   'terraform': ['terraform'],
\   'sh': ['shfmt'],
\   'python': ['autopep8'],
\   'go': ['gofmt'],
\   'vim': [],
\}


let g:ale_completion_enabled = 0

command! ALEDisableFixers       let g:ale_fix_on_save=0
command! ALEEnableFixers        let g:ale_fix_on_save=1
