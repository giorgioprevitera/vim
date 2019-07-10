"--------------------------------------------------
" Use deoplete.
"--------------------------------------------------
" if has('nvim')
"     let g:deoplete#enable_at_startup = 1

    " let g:UltiSnipsExpandTrigger="<S-tab>"
    " let g:UltiSnipsJumpForwardTrigger="<c-b>"
    " let g:UltiSnipsJumpBackwardTrigger="<c-z>"


"     let g:deoplete#omni_patterns = {}
"     let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
"     call deoplete#initialize()
" endif
"



"--------------------------------------------------
"statusline
"--------------------------------------------------
"set statusline=%t       "tail of the filename
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
"set statusline+=%{&ff}] "file format
"set statusline+=%h      "help file flag
"set statusline+=%m      "modified flag
"set statusline+=%r      "read only flag
"set statusline+=%y      "filetype
"set statusline+=%=      "left/right separator
"set statusline+=%c,     "cursor column
"set statusline+=%l/%L   "cursor line/total lines
"set statusline+=\ %P    "percent through file



"--------------------------------------------------
" SideSearch
"--------------------------------------------------
" How should we execute the search?
" --heading and --stats are required!
"let g:side_search_prg = 'ag --word-regexp'
" let g:side_search_prg = 'ag '
"   \. " --nogroup"
"   \. " --heading --stats -B 1 -A 4"

" Can use `vnew` or `new`
" let g:side_search_splitter = 'new'

" I like 40% splits, change it if you don't
" let g:side_search_split_pct = 0.3

" SideSearch current word and return to original window
" nnoremap <Leader>ss :SideSearch <C-r><C-w><CR>

" Create an shorter `SS` command
" command! -complete=file -nargs=+ SS execute 'SideSearch <args>'

" or command abbreviation
" cabbrev SS SideSearch




"--------------------------------------------------
" syntastic
"--------------------------------------------------
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0

"nnoremap <Leader>st :SyntasticToggleMode<CR>
