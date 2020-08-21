"--------------------------------------------------
" Plugins
"--------------------------------------------------
" Plug 'https://github.com/ap/vim-buftabline.git'                                                                    " Buffer list that lives in the tabline
" Plug 'habamax/vim-asciidoctor', { 'for': 'asciidoc' }
" Plug 'https://github.com/airblade/vim-rooter'
" Plug 'https://github.com/Nequo/vim-allomancer.git'
" Plug 'https://github.com/SirVer/ultisnips.git'
" Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin'
" Plug 'https://github.com/ajmwagar/vim-deus.git'
" Plug 'https://github.com/andrewstuart/vim-kubernetes'
" Plug 'https://github.com/blueyed/vim-diminactive'
" Plug 'https://github.com/caksoylar/vim-mysticaltutor.git'
" Plug 'https://github.com/chuling/vim-equinusocio-material'
" Plug 'https://github.com/ctrlpvim/ctrlp.vim'
" Plug 'https://github.com/davidhalter/jedi-vim.git'
" Plug 'https://github.com/ddrscott/vim-side-search.git'
" Plug 'https://github.com/easymotion/vim-easymotion.git'
" Plug 'https://github.com/flrnprz/candid.vim.git'
" Plug 'https://github.com/jacoborus/tender.vim.git'
" Plug 'https://github.com/joshdick/onedark.vim'
" Plug 'https://github.com/junegunn/limelight.vim'
" Plug 'https://github.com/liuchengxu/vista.vim'
" Plug 'https://github.com/luan/vim-concourse'
" Plug 'https://github.com/mhartington/oceanic-next.git'
" Plug 'https://github.com/morhetz/gruvbox'
" Plug 'https://github.com/nwochaadim/git-remote-open.git'
" Plug 'https://github.com/psliwka/vim-smoothie'
" Plug 'https://github.com/rakr/vim-one.git'
" Plug 'https://github.com/rstacruz/vim-closer.git'
" Plug 'https://github.com/terryma/vim-multiple-cursors.git'
" Plug 'https://github.com/tmsvg/pear-tree' " auto-pair
" Plug 'https://github.com/vim-airline/vim-airline'
" Plug 'https://github.com/vim-airline/vim-airline-themes'
" Plug 'https://github.com/vim-ctrlspace/vim-ctrlspace.git', { 'commit': '88da905' }
" Plug 'https://github.com/vim-python/python-syntax.git'
" Plug 'https://github.com/xolox/vim-easytags'
" Plug 'https://github.com/xolox/vim-misc'
" Plug 'https://github.com/yuki-ycino/fzf-preview.vim'
" Plug 'https://github.com/junegunn/goyo.vim.git', { 'on': 'Goyo' }                                                  " Distraction-free writing
" Plug 'https://github.com/tommcdo/vim-fubitive.git'                                                                 " Bitbucket support

    " Plug 'https://github.com/neoclide/coc.nvim', {'tag': '*', 'branch': 'release', 'do': { -> coc#util#install()}}
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'zchee/deoplete-jedi'
    " Plug 'https://github.com/carlitux/deoplete-ternjs.git', { 'do': 'npm install -g tern' }

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
