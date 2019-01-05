"execute pathogen#infect()
call plug#begin()

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/nwochaadim/git-remote-open.git'
Plug 'https://github.com/gregsexton/gitv'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/davidhalter/jedi-vim.git'
Plug 'https://github.com/godlygeek/tabular.git'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/dkprice/vim-easygrep.git'
Plug 'https://github.com/tommcdo/vim-fubitive.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-sensible.git'
Plug 'https://github.com/ddrscott/vim-side-search.git'
Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'https://github.com/terryma/vim-multiple-cursors.git'
Plug 'https://github.com/vim-ctrlspace/vim-ctrlspace.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/Yggdroot/indentLine.git'
"Plug 'https://github.com/lambdalisue/vim-pyenv.git'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/w0rp/ale.git'
Plug 'https://github.com/junegunn/goyo.vim.git'
Plug 'https://github.com/hashivim/vim-terraform.git'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()




"--------------------------------------------------
" Use deoplete.
"--------------------------------------------------
let g:deoplete#enable_at_startup = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"




"--------------------------------------------------
" Syntax
"--------------------------------------------------
syntax on
syntax enable
" YAML syntax
au BufNewFile,BufRead *.yaml.*,*.yml.* so ~/.vim/local/yaml.vim
" Jenkinsfile
autocmd BufRead,BufNewFile Jenkinsfile*,*.jobdsl set syntax=groovy
" Dockerfile
autocmd BufRead,BufNewFile Dockerfile*, set syntax=dockerfile
filetype plugin indent on




"--------------------------------------------------
" Ctrl space
"--------------------------------------------------
nnoremap <C-space> :CtrlSpace<CR>
set hidden
set nocompatible




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

"Set encryption method to blowfish
if ! has('nvim')
    set cm=blowfish2
end

" Copy paste
vmap <C-c> "+y




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
"let g:ctrlp_prompt_mappings = {
    "\ 'AcceptSelection("e")': ['<c-t>'],
    "\ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    "\ }




"--------------------------------------------------
"Airline config
"--------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='hybrid'




"--------------------------------------------------
"Colors
"--------------------------------------------------
"set term=xterm-256color
"set t_Co=256
"set termguicolors
set background=dark
colorscheme minimalist



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
nnoremap <Leader>ss :SideSearch <C-r><C-w><CR>

" Create an shorter `SS` command
command! -complete=file -nargs=+ SS execute 'SideSearch <args>'

" or command abbreviation
cabbrev SS SideSearch




"--------------------------------------------------
" Tagbar
"--------------------------------------------------
nmap <silent> <leader>t :TagbarToggle<CR>
nmap <silent> <leader>tr :!ctags -R --tag-relative -o .git/tags .<CR>




"--------------------------------------------------
" Git Fugitive
"--------------------------------------------------
nnoremap <Leader>gs :Gstatus<CR>
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




"--------------------------------------------------
" indentline
"--------------------------------------------------
let g:indentLine_setConceal = 1
let g:indentLine_char = '⎸'
" if the above doesn't work (no utf-8 file), use the pipe character
"let g:indentLine_char = '|'




"--------------------------------------------------
" Pyenv
"--------------------------------------------------
let g:pyenv#auto_activate = 1




"--------------------------------------------------
" Git gutter
"--------------------------------------------------
let g:gitgutter_sign_modified = ""
let g:gitgutter_sign_added = ""
let g:gitgutter_sign_removed = ""




"--------------------------------------------------
" Ale
"--------------------------------------------------
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'terraform': ['terraform'],
\   'sh': ['shfmt'],
\}


" keep multicursor
let g:multi_cursor_exit_from_insert_mode = 0

" Don't fold git diffs
augroup git
    au!
    autocmd FileType git :setlocal foldlevel=99
augroup END

"source ~/.vim/.simplenoterc

nnoremap <leader>wr :set linebreak noshowmode dictionary=/usr/share/dict/british-english<CR>:Goyo<CR>:colo blue<CR>
