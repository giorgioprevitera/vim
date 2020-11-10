"--------------------------------------------------
" indentline
"--------------------------------------------------
" let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setConceal = 1
let g:indentLine_char = '⎸'
let g:indentLine_bgcolor_term = 239
" if the above doesn't work (no utf-8 file), use the pipe character
"let g:indentLine_char = '|'
let g:indentLine_faster = 1

" indent lines for tabs
" set list lcs=tab:\⎸\ 

augroup DetectIndent
    autocmd!
    autocmd BufReadPost *  DetectIndent
augroup END
