"execute pathogen#infect()
call plug#begin()

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/nwochaadim/git-remote-open.git'
Plug 'https://github.com/gregsexton/gitv'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/davidhalter/jedi-vim.git'
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
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/w0rp/ale.git'
Plug 'https://github.com/junegunn/goyo.vim.git'
Plug 'https://github.com/hashivim/vim-terraform.git'
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-jedi'
endif
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'https://github.com/juliosueiras/vim-terraform-completion.git'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'https://github.com/jeetsukumaran/vim-buffersaurus.git'
Plug 'https://github.com/vim-python/python-syntax.git'
Plug 'https://github.com/svermeulen/vim-cutlass.git'
Plug 'https://github.com/svermeulen/vim-yoink.git'
Plug 'https://github.com/rakr/vim-one.git'
Plug 'tpope/vim-surround'
Plug 'jacoborus/tender.vim'
Plug 'https://github.com/alfredodeza/pytest.vim'
Plug 'https://github.com/rhysd/clever-f.vim.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/rstacruz/vim-closer.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/tommcdo/vim-lion.git'
Plug 'https://github.com/alxpettit/detectindent.git'
Plug 'https://github.com/vim-scripts/highlight.vim.git'
Plug 'iamcco/markdown-preview.vim'


call plug#end()




"--------------------------------------------------
"Colors
"--------------------------------------------------
"set term=xterm-256color
"set t_Co=256
set termguicolors
set background=dark
" colorscheme hybrid_material
" colorscheme darkspectrum
" colorscheme gruvbox
" colorscheme NeoSolarized
" colorscheme material-theme
" colorscheme ayu
" colorscheme minimalist
" colorscheme onedark
" colorscheme one
colorscheme palenight



"--------------------------------------------------
"Airline config
"--------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline_theme='base16_classic'
let g:airline_section_a = '%t'
let g:airline_section_c = ''




"--------------------------------------------------
" Use deoplete.
"--------------------------------------------------
if has('nvim')
    let g:deoplete#enable_at_startup = 1

    let g:UltiSnipsExpandTrigger="<S-tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"


    let g:deoplete#omni_patterns = {}
    let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
    let g:deoplete#enable_at_startup = 1
    call deoplete#initialize()
endif

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"




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
au BufRead,BufNewFile Dockerfile.* set filetype=Dockerfile
au BufRead,BufNewFile *.sh.tpl set filetype=sh
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
set foldmethod=indent
set foldlevel=99

"Set encryption method to blowfish
if ! has('nvim')
    set cm=blowfish2
end

"make jj do esc"
inoremap jk <Esc>

"make esc do nothing"
inoremap <Esc> <Nop>




"--------------------------------------------------
"Tab navigation like Firefox.
"--------------------------------------------------
nnoremap <C-t>     :tabnew<CR>




"--------------------------------------------------
"NerdTree toggler
"--------------------------------------------------
nmap <silent> <leader>p :NERDTreeToggle<CR>
nnoremap <leader>rf :NERDTreeFind<CR>




"--------------------------------------------------
"Enable ctrl+P
"--------------------------------------------------
nnoremap <leader>. :CtrlPTag<cr>
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0




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
  "Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  "Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  "ag is fast enough that CtrlP doesn't need to cache
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
let g:side_search_splitter = 'new'

" I like 40% splits, change it if you don't
let g:side_search_split_pct = 0.3

" SideSearch current word and return to original window
nnoremap <Leader>ss :SideSearch <C-r><C-w><CR>

" Create an shorter `SS` command
command! -complete=file -nargs=+ SS execute 'SideSearch <args>'

" or command abbreviation
cabbrev SS SideSearch




"--------------------------------------------------
" Tagbar
"--------------------------------------------------
nmap <silent> <leader>t :TagbarOpen fj<CR>
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
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0

"nnoremap <Leader>st :SyntasticToggleMode<CR>




"--------------------------------------------------
" indentline
"--------------------------------------------------
"let g:indentLine_setConceal = 1
let g:indentLine_char = '⎸'
let g:indentLine_color_term = 235
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
\   'python': ['autopep8'],
\}


" keep multicursor
let g:multi_cursor_exit_from_insert_mode = 0





"--------------------------------------------------
" Gitv
"--------------------------------------------------
" Don't fold git diffs
augroup git
    au!
    autocmd FileType git :setlocal foldlevel=99
augroup END

let g:Gitv_OpenHorizontal = 1





"--------------------------------------------------
" Misc
"--------------------------------------------------
nnoremap <leader>wr :set linebreak noshowmode dictionary=/usr/share/dict/british-english<CR>:Goyo<CR>
nnoremap <leader>no :tabnew ~/src/notes/ee-ni.notes<CR>





"--------------------------------------------------
" Terminal
"--------------------------------------------------

" Exit terminal mode using Esc
tnoremap jk <C-\><C-n>
" Toggle 'default' terminal
nnoremap <M-`> :call ChooseTerm("terminal", 1)<CR>A<CR>
tnoremap <M-`> <C-\><C-n>:call ChooseTerm("terminal", 1)<CR>
" Start terminal in current pane
nnoremap <M-CR> :call ChooseTerm("term-pane", 0)<CR>

function! ChooseTerm(termname, slider)
    let pane = bufwinnr(a:termname)
    let buf = bufexists(a:termname)
    if pane > 0
        " pane is visible
        if a:slider > 0
            :exe pane . "wincmd c"
        else
            :exe "e #"
        endif
    elseif buf > 0
        " buffer is not in pane
        if a:slider
            :exe "botright split"
        endif
        :exe "buffer " . a:termname
    else
        " buffer is not loaded, create
        if a:slider
            :exe "botright split"
        endif
        :terminal
        :exe "f " a:termname
    endif
endfunction





"--------------------------------------------------
" Yoink
"--------------------------------------------------
nmap <c-n> <plug>(YoinkPostPasteSwapBack)
nmap <c-p> <plug>(YoinkPostPasteSwapForward)
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)
let g:yoinkIncludeDeleteOperations = 1
