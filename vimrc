execute pathogen#infect()

"--------------------------------------------------
" Syntax
"--------------------------------------------------
syntax on
syntax enable
" YAML syntax
au BufNewFile,BufRead *.yaml,*.yml,*.yaml.jinja2 so ~/.vim/local/yaml.vim
" Jenkinsfile
autocmd BufRead,BufNewFile Jenkinsfile*,*.jobdsl set syntax=groovy
filetype plugin indent on




"--------------------------------------------------
" General settings
"--------------------------------------------------
set expandtab
set shiftwidth=4
set softtabstop=4
set hlsearch
set splitright
set nu
set updatetime=100
set mouse=nicr
set clipboard=unnamed

"Set encryption method to blowfish - DOESN'T SEEM TO WORK WITH nvim
"set cm=blowfish2

" Copy paste - NOT REQUIRED ON nvim
"vmap <C-C> "+y




"--------------------------------------------------
"Tab navigation like Firefox.
"--------------------------------------------------
nnoremap <C-t>     :tabnew<CR>
" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>


"--------------------------------------------------
"NerdTree toggler
"--------------------------------------------------
nmap <silent> <leader>p :NERDTreeToggle<CR>




"--------------------------------------------------
"Enable ctrl+P
"--------------------------------------------------
set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap <leader>. :CtrlPTag<cr>

" ctrl+p open in tab by default
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }




"--------------------------------------------------
"Airline config
"--------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1




"--------------------------------------------------
"Colors
"--------------------------------------------------
set background=dark
"set background=light
"set term=xterm-256color
"set t_Co=256
set termguicolors
colorscheme monokai-chris



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
" The Silver Searcher
"--------------------------------------------------
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif




"--------------------------------------------------
" SideSearch
"--------------------------------------------------
" How should we execute the search?
" --heading and --stats are required!
"let g:side_search_prg = 'ag --word-regexp'
let g:side_search_prg = 'ag '
  \. " --nogroup"
  \. " --heading --stats -B 1 -A 4"

" Can use `vnew` or `new`
let g:side_search_splitter = 'vnew'

" I like 40% splits, change it if you don't
let g:side_search_split_pct = 0.1

" SideSearch current word and return to original window
nnoremap <Leader>ss :SideSearch <C-r><C-w><CR> | wincmd p

" Create an shorter `SS` command
command! -complete=file -nargs=+ SS execute 'SideSearch <args>'

" or command abbreviation
cabbrev SS SideSearch




"--------------------------------------------------
" Tagbar
"--------------------------------------------------
nmap <silent> <leader>t :TagbarToggle<CR>




"--------------------------------------------------
" Git Fugitive
"--------------------------------------------------
nnoremap <Leader>gs :Gstatus<CR><c-w>T
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>
set diffopt+=vertical




"--------------------------------------------------
" syntastic
"--------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

nnoremap <Leader>st :SyntasticToggleMode<CR>
