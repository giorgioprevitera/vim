"execute pathogen#infect()
call plug#begin()

Plug 'https://github.com/ajmwagar/vim-deus.git'
Plug 'https://github.com/mhartington/oceanic-next.git'
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/Nequo/vim-allomancer.git'
Plug 'https://github.com/drewtempelmeyer/palenight.vim.git'
Plug 'https://github.com/arcticicestudio/nord-vim.git'
Plug 'https://github.com/rakr/vim-one.git'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/jacoborus/tender.vim.git'
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/jaredgorski/SpaceCamp.git'
Plug 'https://github.com/caksoylar/vim-mysticaltutor.git'
Plug 'https://github.com/flrnprz/taffy.vim'

Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'

Plug 'https://github.com/dyng/ctrlsf.vim.git'
Plug 'https://github.com/davidhalter/jedi-vim.git'
Plug 'https://github.com/SirVer/ultisnips.git'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/alfredodeza/pytest.vim'
Plug 'https://github.com/alxpettit/detectindent.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/ddrscott/vim-side-search.git'
Plug 'https://github.com/dkprice/vim-easygrep.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/gregsexton/gitv'
Plug 'https://github.com/hashivim/vim-terraform.git'
Plug 'https://github.com/honza/vim-snippets.git'
Plug 'https://github.com/iamcco/markdown-preview.nvim.git'
Plug 'https://github.com/jeetsukumaran/vim-buffersaurus.git'
Plug 'https://github.com/juliosueiras/vim-terraform-completion.git'
Plug 'https://github.com/junegunn/goyo.vim.git'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/nwochaadim/git-remote-open.git'
Plug 'https://github.com/rhysd/clever-f.vim.git'
Plug 'https://github.com/rstacruz/vim-closer.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/svermeulen/vim-cutlass.git'
Plug 'https://github.com/svermeulen/vim-yoink.git'
" Plug 'https://github.com/terryma/vim-multiple-cursors.git'
Plug 'https://github.com/tommcdo/vim-fubitive.git'
Plug 'https://github.com/tommcdo/vim-lion.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tpope/vim-rhubarb.git'
Plug 'https://github.com/tpope/vim-sensible.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'https://github.com/vim-ctrlspace/vim-ctrlspace.git'
Plug 'https://github.com/vim-python/python-syntax.git'
Plug 'https://github.com/vim-scripts/highlight.vim.git'
Plug 'https://github.com/vimwiki/vimwiki.git'
Plug 'https://github.com/w0rp/ale.git'
if has('nvim')
    Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'zchee/deoplete-jedi'
    " Plug 'https://github.com/carlitux/deoplete-ternjs.git', { 'do': 'npm install -g tern' }
endif

call plug#end()


"--------------------------------------------------
"Coc
"--------------------------------------------------
let g:coc_global_extensions = ['coc-eslint', 'coc-prettier','coc-tsserver', 'coc-tslint', 'coc-tslint-plugin', 'coc-json', 'coc-python', 'coc-yaml', 'coc-go']

" Better display for messages
" set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=1000
" don't give |ins-completion-menu| messages.
" set shortmess+=c
" always show signcolumns
" set signcolumn=yes

" Use `lp` and `ln` for navigate diagnostics
nmap <silent> <leader>lp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ln <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader>ld <Plug>(coc-definition)
nmap <silent> <leader>lt <Plug>(coc-type-definition)
nmap <silent> <leader>li <Plug>(coc-implementation)
nmap <silent> <leader>lf <Plug>(coc-references)

" Remap for rename current word
nmap <leader>lr <Plug>(coc-rename)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" use <tab> for trigger completion and navigate next complete item
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

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
" colorscheme allomancer
" colorscheme nord
" colorscheme snazzy
" colorscheme deus
" colorscheme palenight
" colorscheme SpaceCamp
" colorscheme mysticaltutor
" colorscheme solarized8_dark_flat
" colorscheme  desertedoceanburnt
" colorscheme OceanicNext
colorscheme taffy

"--------------------------------------------------
"Airline config
"--------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
" let g:airline_theme='base16_classic'
let g:airline_theme='onedark'
let g:airline_section_a = '%t'
let g:airline_section_c = ''


" use error & warning count of diagnostics form coc.nvim
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

" create a part for server status.
function! GetServerStatus()
  return get(g:, 'coc_status', '')
endfunction
call airline#parts#define_function('coc', 'GetServerStatus')
function! AirlineInit()
  let g:airline_section_b = airline#section#create(['coc'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()

" exclude overwrite statusline of list filetype
let g:airline_exclude_filetypes = ["list"]


"--------------------------------------------------
" Use deoplete.
"--------------------------------------------------
if has('nvim')
    " let g:deoplete#enable_at_startup = 1

    let g:UltiSnipsExpandTrigger="<S-tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"


    " let g:deoplete#omni_patterns = {}
    " let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
    " let g:deoplete#enable_at_startup = 1
    " call deoplete#initialize()
endif





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
" set updatetime=1000
set mouse=nicr
set clipboard=unnamed
set foldmethod=indent
set foldlevel=99
set splitright
set splitbelow

"Set encryption method to blowfish
if ! has('nvim')
    set cm=blowfish2
end

"make jk do esc"
"inoremap jk <Esc>

"make esc do nothing"
"inoremap <Esc> <Nop>





"--------------------------------------------------
"NerdTree toggler
"--------------------------------------------------
nmap <silent> <leader>p :NERDTreeToggle<CR>
nnoremap <leader>rf :NERDTreeFind<CR>




"--------------------------------------------------
"Enable ctrl+P
"--------------------------------------------------
nnoremap <leader>. :CtrlPTag<cr>
"let g:ctrlp_match_window_bottom = 0
"let g:ctrlp_match_window_reversed = 0




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
let g:indentLine_faster = 1
let g:indentLine_setConceal = 0




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
\}

let g:ale_completion_enabled = 0

command! ALEDisableFixers       let g:ale_fix_on_save=0
command! ALEEnableFixers        let g:ale_fix_on_save=1





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
tnoremap <Esc> <C-\><C-n>
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

nnoremap <leader>tp :Pytest function<CR>
nnoremap <leader>tps :Pytest function -s<CR>
nnoremap <leader>tpfs :Pytest file -s<CR>
nnoremap <leader>tpf :Pytest file<CR>


augroup DetectIndent
   autocmd!
   autocmd BufReadPost *  DetectIndent
augroup END

" keep multicursor
" let g:multi_cursor_exit_from_insert_mode = 0



"--------------------------------------------------
" Terraform docs lookup
"--------------------------------------------------
command! -nargs=* Tfdoc :call system('tfdoc' . ' ' . <q-args>)
nnoremap <silent> <Leader>tfr :Tfdoc <C-R><C-W><CR>
nnoremap <silent> <Leader>tfd :Tfdoc -d <C-R><C-W><CR>

let g:ctrlsf_auto_focus = {
    \ "at": "start"
    \ }




"--------------------------------------------------
" CtrlSF
"--------------------------------------------------
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>s <Plug>CtrlSFCwordPath<CR>
nmap     <C-F>w <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
